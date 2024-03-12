"""Module test for the online_nsam module."""
from typing import Dict, Set

from pddl_plus_parser.models import Domain, Observation, ActionCall, PDDLObject, State
from pytest import fixture, fail

from sam_learning.core import PriorityQueue, EpisodeInfoRecord, VocabularyCreator
from sam_learning.learners import OnlineNSAMLearner


@fixture()
def depot_online_nsam(depot_domain: Domain) -> OnlineNSAMLearner:
    info_record = EpisodeInfoRecord(list(depot_domain.actions.keys()))
    return OnlineNSAMLearner(partial_domain=depot_domain, episode_recorder=info_record)


@fixture()
def minecraft_large_map_online_nsam(minecraft_large_domain: Domain) -> OnlineNSAMLearner:
    info_record = EpisodeInfoRecord(list(minecraft_large_domain.actions.keys()))
    return OnlineNSAMLearner(partial_domain=minecraft_large_domain, episode_recorder=info_record)


def create_all_grounded_actions(domain: Domain, observation: Observation) -> Set[ActionCall]:
    vocabulary_creator = VocabularyCreator()
    grounded_action_calls = vocabulary_creator.create_grounded_actions_vocabulary(
        domain=domain, observed_objects=observation.grounded_objects)
    return grounded_action_calls


def init_information_gain_dataframes(
        online_nsam: OnlineNSAMLearner, state: State, observed_objects: Dict[str, PDDLObject],
        action: ActionCall) -> None:
    """Initializes the information gain data frames for the given action.

    :param online_nsam: the online NSAM learner.
    :param state: the state to initialize the data frames for.
    :param observed_objects: the observed objects in the state.
    :param action: the action to initialize the data frames for.
    """
    grounded_state_propositions = online_nsam.triplet_snapshot.create_propositional_state_snapshot(
        state, action, observed_objects)
    lifted_predicates = online_nsam.matcher.get_possible_literal_matches(action, list(grounded_state_propositions))
    grounded_state_functions = online_nsam.triplet_snapshot.create_numeric_state_snapshot(state, action,
                                                                                          observed_objects)
    lifted_functions = online_nsam.function_matcher.match_state_functions(action, grounded_state_functions)
    online_nsam.ig_learner[action.name].init_dataframes(
        valid_lifted_functions=list([func for func in lifted_functions.keys()]),
        lifted_predicates=[pred.untyped_representation for pred in lifted_predicates])


def test_get_lifted_bounded_state_returns_correct_lifted_predicates_and_functions(
        minecraft_large_map_online_nsam: OnlineNSAMLearner, minecraft_large_trajectory: Observation):
    test_state = minecraft_large_trajectory.components[0].previous_state
    test_action = minecraft_large_trajectory.components[0].grounded_action_call
    lifted_functions, lifted_predicates = minecraft_large_map_online_nsam._get_lifted_bounded_state(
        test_action, test_state)
    assert len(lifted_functions) == 5
    assert len(lifted_predicates) > 4


def test_select_action_to_execute_when_there_are_no_actions_in_the_applicable_actions_will_select_from_the_frontier(
        depot_online_nsam: OnlineNSAMLearner, depot_domain: Domain, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    depot_online_nsam.applicable_actions = PriorityQueue()
    frontier = PriorityQueue()
    not_applicable_action = depot_observation.components[1].grounded_action_call
    frontier.insert(item=not_applicable_action, priority=1.0, selection_probability=1.0)
    next_action = depot_online_nsam._select_action_to_execute(frontier=frontier)
    assert next_action == not_applicable_action


def test_select_action_to_execute_when_there_are_no_actions_in_the_frontier_actions_will_select_from_the_the_applicable_actions(
        depot_online_nsam: OnlineNSAMLearner, depot_domain: Domain, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    depot_online_nsam.applicable_actions = PriorityQueue()
    applicable_action = depot_observation.components[0].grounded_action_call
    depot_online_nsam.applicable_actions.insert(item=applicable_action, priority=1.0, selection_probability=1.0)
    frontier = PriorityQueue()
    next_action = depot_online_nsam._select_action_to_execute(frontier=frontier)
    assert next_action == applicable_action


def test_calculate_state_information_gain_returns_value_greater_than_zero_when_action_is_observed_for_the_first_time(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation, depot_domain: Domain):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_state = depot_observation.components[0].previous_state
    tested_action = depot_observation.components[0].grounded_action_call
    assert depot_online_nsam.calculate_state_action_information_gain(state=tested_state, action=tested_action) > 0


def test_execute_action_when_action_is_successful_adds_action_to_positive_samples_in_information_gain_learner(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_previous_state = depot_observation.components[0].previous_state
    tested_action = depot_observation.components[0].grounded_action_call
    tested_next_state = depot_observation.components[0].next_state
    depot_online_nsam.execute_action(
        action_to_execute=tested_action, previous_state=tested_previous_state, next_state=tested_next_state, reward=1)
    assert len(depot_online_nsam.ig_learner[tested_action.name].numeric_positive_samples) == 1
    assert len(depot_online_nsam.ig_learner[tested_action.name].positive_discrete_sample_df) == 1


def test_execute_action_when_action_is_successful_adds_action_statistics_to_episode_recorder(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_previous_state = depot_observation.components[0].previous_state
    tested_action = depot_observation.components[0].grounded_action_call
    tested_next_state = depot_observation.components[0].next_state
    depot_online_nsam.execute_action(
        action_to_execute=tested_action, previous_state=tested_previous_state, next_state=tested_next_state, reward=1)
    assert depot_online_nsam._episode_recorder._episode_info[f"#{tested_action.name}_success"] == 1


def test_execute_action_when_action_fails_adds_action_statistics_to_episode_recorder(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_previous_state = depot_observation.components[0].previous_state
    tested_action = depot_observation.components[0].grounded_action_call
    tested_next_state = depot_observation.components[0].next_state
    depot_online_nsam.execute_action(
        action_to_execute=tested_action, previous_state=tested_previous_state, next_state=tested_next_state, reward=-1)
    assert depot_online_nsam._episode_recorder._episode_info[f"#{tested_action.name}_fail"] == 1


def test_execute_action_when_action_is_successful_adds_the_action_to_observed_actions_and_learn_partial_model_of_the_action(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_previous_state = depot_observation.components[0].previous_state
    tested_action = depot_observation.components[0].grounded_action_call
    tested_next_state = depot_observation.components[0].next_state
    depot_online_nsam.execute_action(
        action_to_execute=tested_action, previous_state=tested_previous_state, next_state=tested_next_state, reward=1)

    assert tested_action.name in depot_online_nsam.observed_actions
    # checking that the drive action was correctly learned
    assert len(depot_online_nsam.partial_domain.actions[tested_action.name].preconditions.root.operands) > 1
    assert len(depot_online_nsam.partial_domain.actions[tested_action.name].discrete_effects) == 2


def test_execute_action_when_action_is_not_successful_adds_action_to_negative_samples_and_removes_redundant_functions_as_well(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_action = depot_observation.components[0].grounded_action_call
    tested_next_state = depot_observation.components[0].next_state
    depot_online_nsam.execute_action(
        action_to_execute=tested_action, previous_state=tested_next_state, next_state=tested_next_state, reward=-1)

    assert len(depot_online_nsam.ig_learner[tested_action.name].numeric_negative_samples) == 1
    assert len(depot_online_nsam.ig_learner[tested_action.name].negative_combined_sample_df) == 1


def test_execute_action_when_action_is_not_successful_does_not_add_action_to_observed_actions(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_action = depot_observation.components[0].grounded_action_call
    tested_next_state = depot_observation.components[0].next_state
    depot_online_nsam.execute_action(
        action_to_execute=tested_action, previous_state=tested_next_state, next_state=tested_next_state, reward=-1)

    assert tested_action.name not in depot_online_nsam.observed_actions


def test_calculate_state_information_gain_when_action_is_observed_twice_returns_zero_in_the_second_calculation(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    tested_previous_state = depot_observation.components[0].previous_state
    tested_action = depot_observation.components[0].grounded_action_call
    tested_next_state = depot_observation.components[0].next_state
    assert depot_online_nsam.calculate_state_action_information_gain(
        state=tested_previous_state, action=tested_action) > 0
    depot_online_nsam.execute_action(
        action_to_execute=tested_action, previous_state=tested_previous_state, next_state=tested_next_state, reward=1)

    assert depot_online_nsam.calculate_state_action_information_gain(state=tested_previous_state,
                                                                     action=tested_action) == 0


def test_calculate_state_action_information_gain_when_tp_is_successful_and_then_fails_will_return_zero_for_second_failure(
        minecraft_large_map_online_nsam: OnlineNSAMLearner, minecraft_large_trajectory: Observation,
        minecraft_large_domain: Domain):
    init_information_gain_dataframes(
        minecraft_large_map_online_nsam, minecraft_large_trajectory.components[0].previous_state,
        minecraft_large_trajectory.grounded_objects, minecraft_large_trajectory.components[0].grounded_action_call)
    tested_previous_state = minecraft_large_trajectory.components[0].previous_state
    tested_next_state = minecraft_large_trajectory.components[0].next_state

    successful_action = ActionCall(name="tp_to", grounded_parameters=["cell15", "cell21"])
    minecraft_large_map_online_nsam.execute_action(
        action_to_execute=successful_action, previous_state=tested_previous_state, next_state=tested_next_state,
        reward=1)

    failed_teleport_action = ActionCall(name="tp_to", grounded_parameters=["cell21", "cell21"])
    minecraft_large_map_online_nsam.execute_action(
        action_to_execute=failed_teleport_action, previous_state=tested_next_state, next_state=tested_next_state,
        reward=-1)

    second_failed_teleport_action = ActionCall(name="tp_to", grounded_parameters=["cell13", "cell13"])
    assert minecraft_large_map_online_nsam.calculate_state_action_information_gain(
        state=tested_previous_state, action=second_failed_teleport_action) == 0


def test_consecutive_execution_of_informative_actions_creates_small_convex_hulls_and_does_not_fail(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    try:
        for component in depot_observation.components:
            tested_previous_state = component.previous_state
            tested_action = component.grounded_action_call
            tested_next_state = component.next_state
            if depot_online_nsam.calculate_state_action_information_gain(state=tested_previous_state,
                                                                         action=tested_action) > 0:
                depot_online_nsam.execute_action(
                    action_to_execute=tested_action,
                    previous_state=tested_previous_state, next_state=tested_next_state, reward=1)

    except Exception as e:
        fail()


def test_consecutive_execution_of_informative_actions_creates_a_usable_model(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation):
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    for component in depot_observation.components:
        tested_previous_state = component.previous_state
        tested_action = component.grounded_action_call
        tested_next_state = component.next_state
        if depot_online_nsam.calculate_state_action_information_gain(state=tested_previous_state,
                                                                     action=tested_action) > 0:
            depot_online_nsam.execute_action(
                action_to_execute=tested_action, previous_state=tested_previous_state,
                next_state=tested_next_state, reward=1)

    depot_online_nsam._create_safe_action_model()
    domain = depot_online_nsam.partial_domain
    print(domain.to_pddl())


def test_calculate_valid_neighbors_returns_a_set_of_actions_containing_the_action_that_was_actually_executed_on_the_state(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation, depot_domain: Domain):
    grounded_actions = create_all_grounded_actions(domain=depot_domain, observation=depot_observation)
    initial_state = depot_observation.components[0].previous_state
    observation_action = depot_observation.components[0].grounded_action_call
    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    valid_neighbors = depot_online_nsam.calculate_valid_neighbors(grounded_actions=grounded_actions,
                                                                  current_state=initial_state)
    queue_items = set()
    while len(valid_neighbors) > 0:
        action = valid_neighbors.get_item()
        assert isinstance(action, ActionCall)
        queue_items.add(str(action))

    assert str(observation_action) in queue_items


def test_calculate_valid_neighbors_returns_a_set_with_less_actions_when_action_already_executed_in_state_and_the_action_is_not_applicable(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation, depot_domain: Domain):
    grounded_actions = create_all_grounded_actions(domain=depot_domain, observation=depot_observation)
    initial_state = depot_observation.components[0].previous_state
    observation_action = depot_observation.components[0].grounded_action_call

    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    valid_neighbors = depot_online_nsam.calculate_valid_neighbors(grounded_actions=grounded_actions,
                                                                  current_state=initial_state)
    num_neighbors = valid_neighbors.__len__()

    depot_online_nsam.execute_action(observation_action, previous_state=initial_state, next_state=initial_state,
                                     reward=-1)
    valid_neighbors = depot_online_nsam.calculate_valid_neighbors(grounded_actions=grounded_actions,
                                                                  current_state=initial_state)
    new_num_neighbors = valid_neighbors.__len__()
    assert new_num_neighbors < num_neighbors


def test_calculate_valid_neighbors_returns_a_set_with_less_actions_when_action_already_executed_in_state_and_the_action_is_applicable(
        depot_online_nsam: OnlineNSAMLearner, depot_observation: Observation, depot_domain: Domain):
    grounded_actions = create_all_grounded_actions(domain=depot_domain, observation=depot_observation)
    initial_state = depot_observation.components[0].previous_state
    observation_action = depot_observation.components[0].grounded_action_call
    next_state = depot_observation.components[0].next_state

    init_information_gain_dataframes(
        depot_online_nsam, depot_observation.components[0].previous_state,
        depot_observation.grounded_objects, depot_observation.components[0].grounded_action_call)
    valid_neighbors = depot_online_nsam.calculate_valid_neighbors(grounded_actions=grounded_actions,
                                                                  current_state=initial_state)
    num_neighbors = valid_neighbors.__len__()

    # executed action '(drive truck0 depot0 distributor0)'
    depot_online_nsam.execute_action(observation_action, previous_state=initial_state, next_state=next_state, reward=1)
    valid_neighbors = depot_online_nsam.calculate_valid_neighbors(grounded_actions=grounded_actions,
                                                                  current_state=initial_state)
    new_num_neighbors = valid_neighbors.__len__()
    assert new_num_neighbors < num_neighbors
