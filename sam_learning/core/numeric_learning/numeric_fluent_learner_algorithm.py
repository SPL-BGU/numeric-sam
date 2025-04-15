"""Module that stores amd learns an action's numeric state fluents."""
import logging
from collections import defaultdict
from typing import Dict, List, Tuple, Optional, Set

import numpy as np
from pddl_plus_parser.models import PDDLFunction, Precondition, NumericalExpressionTree

from sam_learning.core.numeric_learning import IncrementalConvexHullLearner
from sam_learning.core.numeric_learning.convex_hull_learner import ConvexHullLearner
from sam_learning.core.numeric_learning.linear_regression_learner import LinearRegressionLearner
from sam_learning.core.numeric_learning.numeric_utils import create_monomials, create_polynomial_string

np.seterr(divide="ignore", invalid="ignore")


class NumericFluentStateStorage:
    """Stores and learned the numeric state fluents of a single action."""

    logger: logging.Logger
    previous_state_storage: Dict[str, List[float]]  # lifted function str -> numeric values.
    next_state_storage: Dict[str, List[float]]  # lifted function str -> numeric values.

    def __init__(self, action_name: str, domain_functions: Dict[str, PDDLFunction], polynom_degree: int = 0, approximation_params = None):
        self.action_name = action_name
        self.logger = logging.getLogger(__name__)
        self.previous_state_storage = defaultdict(list)
        self.next_state_storage = defaultdict(list)
        self.monomials = create_monomials(list(domain_functions.keys()), polynom_degree)
        self.convex_hull_learner = ConvexHullLearner(action_name, domain_functions, polynom_degree=polynom_degree)
        self.linear_regression_learner = LinearRegressionLearner(action_name, domain_functions, polynom_degree=polynom_degree)
        self.approximation_params = approximation_params

    def add_to_previous_state_storage(self, state_fluents: Dict[str, PDDLFunction]) -> None:
        """Adds the matched lifted state fluents to the previous state storage.

        :param state_fluents: the lifted state fluents that were matched for the action.
        """
        sample_dataset = {}
        for monomial in self.monomials:
            if any([component not in state_fluents for component in monomial]):
                continue

            sample_dataset[create_polynomial_string(monomial)] = np.prod([state_fluents[fluent].value for fluent in monomial])

        self.convex_hull_learner.add_new_point(sample_dataset)
        self.linear_regression_learner.add_new_observation(sample_dataset, store_in_prev_state=True)

    def add_to_next_state_storage(self, state_fluents: Dict[str, PDDLFunction]) -> None:
        """Adds the matched lifted state fluents to the next state storage.

        :param state_fluents: the lifted state fluents that were matched for the action.
        """
        next_state_values = {state_fluent_lifted_str: state_fluent_data.value for state_fluent_lifted_str, state_fluent_data in state_fluents.items()}
        self.linear_regression_learner.add_new_observation(next_state_values, store_in_prev_state=False)

    def construct_safe_linear_inequalities(self, relevant_fluents: Optional[List[str]] = None) -> Precondition:
        """Constructs the linear inequalities strings that will be used in the learned model later.

        :param relevant_fluents: the fluents that are part of the action's preconditions and effects.
        :return: The precondition that contains the linear inequalities.
        """
        self.logger.info("Constructing the safe linear inequalities.")
        if self.approximation_params is not None:
            epsilon = self.approximation_params["epsilon"]
            qhull_options = self.approximation_params["qhull_params"]
            return self.convex_hull_learner.construct_safe_linear_inequalities(relevant_fluents, epsilon=epsilon, qhull_options=qhull_options)

        return self.convex_hull_learner.construct_safe_linear_inequalities(relevant_fluents)

    def construct_assignment_equations(
        self, allow_unsafe: bool = False, relevant_fluents: Optional[List[str]] = None
    ) -> Tuple[Set[NumericalExpressionTree], Optional[Precondition], bool]:
        """Constructs the assignment statements for the action according to the changed value functions.

        :param allow_unsafe: whether to allow unsafe fluents in the assignment equations.
        :param relevant_fluents: the fluents that are part of the action's preconditions and effects.
        :return: the constructed assignment statements.
        """
        self.logger.info("Constructing the assignment equations.")
        return self.linear_regression_learner.construct_assignment_equations(allow_unsafe=allow_unsafe, relevant_fluents=relevant_fluents)


class IncrementalNumericFluentStateStorage(NumericFluentStateStorage):
    """Stores and learned the numeric state fluents of a single action."""

    def __init__(self, action_name: str, domain_functions: Dict[str, PDDLFunction], polynom_degree: int = 0):
        super().__init__(action_name, domain_functions, polynom_degree=polynom_degree)
        self.logger = logging.getLogger(__name__)
        self.convex_hull_learner = IncrementalConvexHullLearner(action_name, domain_functions, polynom_degree)
