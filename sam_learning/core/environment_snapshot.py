"""Represents the current snapshot of the environment."""

import logging
from typing import Set, Dict, Optional, List

from pddl_plus_parser.models import GroundedPredicate, State, PDDLObject, Domain, ActionCall, PDDLFunction

from sam_learning.core.vocabulary_creator import VocabularyCreator


class EnvironmentSnapshot:
    """class representing the snapshot of the environment."""

    vocabulary_creator: VocabularyCreator
    previous_state_predicates: Set[GroundedPredicate]
    next_state_predicates: Set[GroundedPredicate]
    previous_state_functions: Dict[str, PDDLFunction]
    next_state_functions: Dict[str, PDDLFunction]
    partial_domain: Domain
    logger: logging.Logger

    def __init__(self, partial_domain: Domain):
        self.logger = logging.getLogger(__name__)
        self.vocabulary_creator = VocabularyCreator()
        self.previous_state_predicates = set()
        self.next_state_predicates = set()
        self.previous_state_functions = {}
        self.next_state_functions = {}
        self.partial_domain = partial_domain

    def _create_state_discrete_snapshot(
            self, state: State,
            relevant_objects: Dict[str, PDDLObject]) -> Set[GroundedPredicate]:
        """Creates a snapshot of the state predicates.

        :param state: the state to create a snapshot of.
        :param relevant_objects: the relevant objects in the observation.
        """
        self.logger.debug("Creating a snapshot of the state predicates.")
        positive_state_predicates, negative_state_predicates = set(), set()
        vocabulary = self.vocabulary_creator.create_vocabulary(domain=self.partial_domain,
                                                               observed_objects=relevant_objects)

        for lifted_predicate_name, vocabulary_predicates in vocabulary.items():
            if lifted_predicate_name not in state.state_predicates:
                negative_state_predicates.update([GroundedPredicate(name=p.name, signature=p.signature,
                                                                    object_mapping=p.object_mapping, is_positive=False)
                                                  for p in vocabulary_predicates])
                continue

            for grounded_vocabulary_predicate in vocabulary_predicates:
                for predicate in state.state_predicates[lifted_predicate_name]:
                    predicate.is_positive = True  # TODO: this is a hack, fix it
                    if predicate.object_mapping == grounded_vocabulary_predicate.object_mapping:
                        positive_state_predicates.add(grounded_vocabulary_predicate)
                        break

            negative_state_predicates.update([GroundedPredicate(name=p.name, signature=p.signature,
                                                                object_mapping=p.object_mapping, is_positive=False)
                                              for p in vocabulary_predicates.difference(positive_state_predicates)])

        return positive_state_predicates.union(negative_state_predicates)

    def _create_state_numeric_snapshot(
            self, state: State, relevant_objects: Dict[str, PDDLObject]) -> Dict[str, PDDLFunction]:
        """

        :param state:
        :param relevant_objects:
        :return:
        """
        self.logger.debug("Creating a snapshot of the state functions.")
        result = {}
        for function_str, pddl_function in state.state_fluents.items():
            if len(pddl_function.signature.keys()) == 0 or \
                    set(pddl_function.signature.keys()).issubset(relevant_objects):
                result[function_str] = pddl_function

        return result

    def create_triplet_snapshot(
            self, previous_state: State, next_state: State, current_action: ActionCall,
            observation_objects: Dict[str, PDDLObject], specific_types: Optional[List[str]] = []) -> None:
        """Creates a snapshot of the environment.

        :param previous_state: the previous state of the environment.
        :param next_state: the next state of the environment.
        :param current_action: the current action.
        :param observation_objects: the objects in the observation.
        :param specific_types: the types of the objects to include in the snapshot.
        """
        self.logger.debug("Creating a snapshot of the environment.")
        parameters_including_consts = current_action.parameters + list(self.partial_domain.constants.keys())
        relevant_objects = {object_name: object_data for object_name, object_data in observation_objects.items()
                            if object_name in parameters_including_consts or object_data.type.name in specific_types}

        self.previous_state_predicates = self._create_state_discrete_snapshot(previous_state, relevant_objects)
        self.next_state_predicates = self._create_state_discrete_snapshot(next_state, relevant_objects)
        self.previous_state_functions = self._create_state_numeric_snapshot(previous_state, relevant_objects)
        self.next_state_functions = self._create_state_numeric_snapshot(next_state, relevant_objects)
