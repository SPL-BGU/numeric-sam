"""Extension to SAM Learning that can learn numeric state variables."""

from typing import List, Dict, Tuple, Optional

from pddl_plus_parser.models import Observation, ActionCall, State, Domain, Precondition, Predicate

from sam_learning.core import LearnerDomain, NumericFluentStateStorage, NumericFunctionMatcher, NotSafeActionError, \
    PolynomialFluentsLearningAlgorithm, LearnerAction
from .sam_learning import SAMLearner


class NumericSAMLearner(SAMLearner):
    """The Extension of SAM that is able to learn numeric state variables."""

    storage: Dict[str, NumericFluentStateStorage]
    function_matcher: NumericFunctionMatcher
    preconditions_fluent_map: Dict[str, List[str]]

    def __init__(self, partial_domain: Domain, preconditions_fluent_map: Optional[Dict[str, List[str]]] = None,
                 **kwargs):
        super().__init__(partial_domain)
        self.storage = {}
        self.function_matcher = NumericFunctionMatcher(partial_domain)
        self.preconditions_fluent_map = preconditions_fluent_map

    def _construct_safe_numeric_preconditions(self, action: LearnerAction) -> None:
        """Constructs the safe preconditions for the input action.

        :param action: the action that the preconditions are constructed for.
        """
        action_name = action.name
        if self.preconditions_fluent_map is None:
            learned_numeric_preconditions = self.storage[action_name].construct_safe_linear_inequalities()

        elif len(self.preconditions_fluent_map[action_name]) == 0:
            self.logger.debug(f"The action {action_name} has no numeric preconditions.")
            return

        else:
            learned_numeric_preconditions = self.storage[action_name].construct_safe_linear_inequalities(
                self.preconditions_fluent_map[action_name])

        if learned_numeric_preconditions.binary_operator == "and":
            self.logger.debug("The learned preconditions are a conjunction. Adding the internal numeric conditions.")
            for condition in learned_numeric_preconditions.operands:
                action.preconditions.add_condition(condition)

            return

        self.logger.debug("The learned preconditions are not a conjunction. Adding them as a separate condition.")
        action.preconditions.add_condition(learned_numeric_preconditions)

    def _construct_safe_numeric_effects(self, action: LearnerAction) -> None:
        """Constructs the safe numeric effects for the input action.

        :param action: the action that its effects are constructed for.
        """
        effects, numeric_preconditions, learned_perfectly = self.storage[action.name].construct_assignment_equations()
        if learned_perfectly:
            self.logger.debug(f"The effect of action - {action.name} were learned perfectly.")

        if effects is not None and len(effects) > 0:
            action.numeric_effects = effects

        self.logger.debug(f"The action {action.name} was not learned perfectly. ")
        if numeric_preconditions is not None:
            restrictive_preconditions = Precondition("and")
            for precondition in action.preconditions.root.operands:
                if isinstance(precondition, Predicate):
                    restrictive_preconditions.add_condition(precondition)

            restrictive_preconditions.add_condition(numeric_preconditions)
            action.preconditions.root = restrictive_preconditions

    def add_new_action(self, grounded_action: ActionCall, previous_state: State, next_state: State) -> None:
        """Adds a new action to the learned domain.

        :param grounded_action: the grounded action that was executed according to the observation.
        :param previous_state: the state that the action was executed on.
        :param next_state: the state that was created after executing the action on the previous
        """
        super().add_new_action(grounded_action, previous_state, next_state)
        self.logger.debug(f"Creating the new storage for the action - {grounded_action.name}.")
        previous_state_lifted_matches = self.function_matcher.match_state_functions(
            grounded_action, self.triplet_snapshot.previous_state_functions)
        next_state_lifted_matches = self.function_matcher.match_state_functions(
            grounded_action, self.triplet_snapshot.next_state_functions)
        self.storage[grounded_action.name] = NumericFluentStateStorage(
            grounded_action.name, self.partial_domain.functions)
        self.storage[grounded_action.name].add_to_previous_state_storage(previous_state_lifted_matches)
        self.storage[grounded_action.name].add_to_next_state_storage(next_state_lifted_matches)
        self.logger.debug(f"Done creating the numeric state variable storage for the action - {grounded_action.name}")

    def update_action(
            self, grounded_action: ActionCall, previous_state: State, next_state: State) -> None:
        """Updates the action's data according to the new input observed triplet.

        :param grounded_action: the grounded action that was observed.
        :param previous_state: the state that the action was executed on.
        :param next_state: the state that was created after executing the action on the previous
            state.
        """
        action_name = grounded_action.name
        super().update_action(grounded_action, previous_state, next_state)
        self.logger.debug(
            f"Adding the numeric state variables to the numeric storage of action - {action_name}.")
        previous_state_lifted_matches = self.function_matcher.match_state_functions(
            grounded_action, self.triplet_snapshot.previous_state_functions)
        next_state_lifted_matches = self.function_matcher.match_state_functions(
            grounded_action, self.triplet_snapshot.next_state_functions)
        self.storage[action_name].add_to_previous_state_storage(previous_state_lifted_matches)
        self.storage[action_name].add_to_next_state_storage(next_state_lifted_matches)
        self.logger.debug(f"Done updating the numeric state variable storage for the action - {grounded_action.name}")

    def learn_action_model(self, observations: List[Observation]) -> Tuple[LearnerDomain, Dict[str, str]]:
        """Learn the SAFE action model from the input observations.

        :param observations: the list of trajectories that are used to learn the safe action model.
        :return: a domain containing the actions that were learned and the metadata about the learning.
        """
        self.logger.info("Starting to learn the action model!")
        super().start_measure_learning_time()
        allowed_actions = {}
        learning_metadata = {}
        super().deduce_initial_inequality_preconditions()
        for observation in observations:
            self.current_trajectory_objects = observation.grounded_objects
            for component in observation.components:
                if not super().are_states_different(component.previous_state, component.next_state):
                    continue

                self.handle_single_trajectory_component(component)

        for action_name, action in self.partial_domain.actions.items():
            if action_name not in self.storage:
                self.logger.debug(f"The action - {action_name} has not been observed in the trajectories!")
                continue

            self.storage[action_name].filter_out_inconsistent_state_variables()
            try:
                self._construct_safe_numeric_preconditions(action)
                self._construct_safe_numeric_effects(action)
                allowed_actions[action_name] = action
                learning_metadata[action_name] = "OK"
                self.logger.info(f"Done learning the action - {action_name}!")

            except NotSafeActionError as e:
                self.logger.debug(f"The action - {e.action_name} is not safe for execution, reason - {e.reason}")
                learning_metadata[action_name] = e.solution_type.name

        self.partial_domain.actions = allowed_actions

        super().end_measure_learning_time()
        learning_metadata["learning_time"] = str(self.learning_end_time - self.learning_start_time)
        return self.partial_domain, learning_metadata


class PolynomialSAMLearning(NumericSAMLearner):
    """The Extension of SAM that is able to learn polynomial state variables."""
    storage: Dict[str, PolynomialFluentsLearningAlgorithm]
    polynom_degree: int

    def __init__(self, partial_domain: Domain, preconditions_fluent_map: Optional[Dict[str, List[str]]] = None,
                 polynomial_degree: int = 1, **kwargs):
        super().__init__(partial_domain, preconditions_fluent_map, **kwargs)
        self.polynom_degree = polynomial_degree

    def add_new_action(self, grounded_action: ActionCall, previous_state: State, next_state: State) -> None:
        """Adds a new action to the learned domain.

        :param grounded_action: the grounded action that was executed according to the observation.
        :param previous_state: the state that the action was executed on.
        :param next_state: the state that was created after executing the action on the previous
            state.
        """
        super().add_new_action(grounded_action, previous_state, next_state)
        self.logger.debug(f"Creating the new storage for the action - {grounded_action.name}.")
        previous_state_lifted_matches = self.function_matcher.match_state_functions(
            grounded_action, previous_state.state_fluents)
        next_state_lifted_matches = self.function_matcher.match_state_functions(
            grounded_action, next_state.state_fluents)
        self.storage[grounded_action.name] = PolynomialFluentsLearningAlgorithm(
            grounded_action.name, self.polynom_degree, self.partial_domain.functions, is_verbose=True)
        self.storage[grounded_action.name].add_to_previous_state_storage(previous_state_lifted_matches)
        self.storage[grounded_action.name].add_to_next_state_storage(next_state_lifted_matches)
        self.logger.debug(f"Done creating the numeric state variable storage for the action - {grounded_action.name}")
