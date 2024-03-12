"""module tests for the Numeric SAM learning algorithm"""

from pddl_plus_parser.lisp_parsers import ProblemParser, TrajectoryParser, DomainParser
from pddl_plus_parser.models import Domain, Problem, Observation, Predicate
from pytest import fixture

from sam_learning.learners.incremental_numeric_sam import IncrementalNumericSAMLearner
from tests.consts import (
    SATELLITE_PROBLEMATIC_PROBLEM_PATH,
    SATELLITE_PROBLEMATIC_NUMERIC_TRAJECTORY_PATH,
    sync_snapshot,
    MINECRAFT_MEDIUM_DOMAIN_PATH,
    MINECRAFT_MEDIUM_TRAJECTORY_PATH,
    MINECRAFT_SMALL_DOMAIN_PATH,
    MINECRAFT_SMALL_TRAJECTORY_PATH,
)


@fixture()
def satellite_problem_problematic(satellite_numeric_domain: Domain) -> Problem:
    return ProblemParser(
        problem_path=SATELLITE_PROBLEMATIC_PROBLEM_PATH, domain=satellite_numeric_domain
    ).parse_problem()


@fixture()
def satellite_observation_problematic(
    satellite_numeric_domain: Domain, satellite_problem_problematic: Problem
) -> Observation:
    return TrajectoryParser(satellite_numeric_domain, satellite_problem_problematic).parse_trajectory(
        SATELLITE_PROBLEMATIC_NUMERIC_TRAJECTORY_PATH
    )


@fixture()
def minecraft_medium_domain() -> Domain:
    return DomainParser(MINECRAFT_MEDIUM_DOMAIN_PATH, partial_parsing=True).parse_domain()


@fixture()
def minecraft_medium_observation(minecraft_medium_domain: Domain) -> Observation:
    return TrajectoryParser(minecraft_medium_domain).parse_trajectory(MINECRAFT_MEDIUM_TRAJECTORY_PATH)


@fixture()
def minecraft_medium_sam(minecraft_medium_domain: Domain) -> IncrementalNumericSAMLearner:
    nsam = IncrementalNumericSAMLearner(minecraft_medium_domain)
    nsam._initialize_fluents_learners()
    return nsam


@fixture()
def minecraft_small_domain() -> Domain:
    return DomainParser(MINECRAFT_SMALL_DOMAIN_PATH, partial_parsing=True).parse_domain()


@fixture()
def minecraft_small_observation(minecraft_small_domain: Domain) -> Observation:
    return TrajectoryParser(minecraft_small_domain).parse_trajectory(MINECRAFT_SMALL_TRAJECTORY_PATH)


@fixture()
def minecraft_small_sam(minecraft_small_domain: Domain) -> IncrementalNumericSAMLearner:
    nsam = IncrementalNumericSAMLearner(minecraft_small_domain)
    nsam._initialize_fluents_learners()
    return nsam


@fixture()
def depot_nsam(depot_domain: Domain) -> IncrementalNumericSAMLearner:
    nsam = IncrementalNumericSAMLearner(depot_domain)
    nsam._initialize_fluents_learners()
    return nsam


@fixture()
def satellite_nsam(satellite_numeric_domain: Domain) -> IncrementalNumericSAMLearner:
    nsam = IncrementalNumericSAMLearner(satellite_numeric_domain)
    nsam._initialize_fluents_learners()
    return nsam


@fixture()
def minecraft_nsam(minecraft_domain: Domain) -> IncrementalNumericSAMLearner:
    nsam = IncrementalNumericSAMLearner(minecraft_domain)
    nsam._initialize_fluents_learners()
    return nsam 


def test_add_new_action_adds_sets_the_dataset_with_new_observation_for_the_previous_state(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    initial_state = depot_observation.components[0].previous_state
    action_call = depot_observation.components[0].grounded_action_call
    next_state = depot_observation.components[0].next_state
    sync_snapshot(depot_nsam, depot_observation.components[0], depot_observation.grounded_objects)
    depot_nsam.add_new_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    assert len(depot_nsam.storage[action_call.name].convex_hull_learner.data) == 1


def test_add_new_action_adds_discrete_preconditions_to_the_learned_action(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    initial_state = depot_observation.components[0].previous_state
    action_call = depot_observation.components[0].grounded_action_call
    next_state = depot_observation.components[0].next_state
    sync_snapshot(depot_nsam, depot_observation.components[0], depot_observation.grounded_objects)
    depot_nsam.add_new_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    learned_action = depot_nsam.partial_domain.actions[action_call.name]
    action_discrete_preconditions = [
        precondition for _, precondition in learned_action.preconditions if isinstance(precondition, Predicate)
    ]
    assert len(action_discrete_preconditions) > 0


def test_add_new_action_adds_the_required_predicates_to_the_action_preconditions(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    initial_state = depot_observation.components[0].previous_state
    action_call = depot_observation.components[0].grounded_action_call
    next_state = depot_observation.components[0].next_state
    sync_snapshot(depot_nsam, depot_observation.components[0], depot_observation.grounded_objects)
    depot_nsam.add_new_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    learned_action = depot_nsam.partial_domain.actions[action_call.name]
    action_discrete_preconditions = [
        precondition for _, precondition in learned_action.preconditions if isinstance(precondition, Predicate)
    ]
    preconditions_str = {precondition.untyped_representation for precondition in action_discrete_preconditions}
    assert preconditions_str.issuperset({"(at ?x ?y)"})


def test_update_action_when_adding_a_point_that_was_already_added_to_the_dataset_does_not_add_it_again(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    initial_state = depot_observation.components[0].previous_state
    action_call = depot_observation.components[0].grounded_action_call
    next_state = depot_observation.components[0].next_state
    sync_snapshot(depot_nsam, depot_observation.components[0], depot_observation.grounded_objects)
    depot_nsam.add_new_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    depot_nsam.update_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    assert len(depot_nsam.storage[action_call.name].convex_hull_learner.data) == 1
    assert depot_nsam.storage[action_call.name].convex_hull_learner._gsp_base is None
    assert depot_nsam.storage[action_call.name].convex_hull_learner._complementary_base is None


def test_update_action_when_adding_a_different_sample_adds_the_data_to_the_gsp_basis(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    test_action_name = "drive"
    relevant_triplet_indexes = [0, 4]
    for triplet in relevant_triplet_indexes:
        pre_state = depot_observation.components[triplet].previous_state
        action_call = depot_observation.components[triplet].grounded_action_call
        next_state = depot_observation.components[triplet].next_state
        sync_snapshot(depot_nsam, depot_observation.components[triplet], depot_observation.grounded_objects)
        if triplet == 0:
            depot_nsam.add_new_action(grounded_action=action_call, previous_state=pre_state, next_state=next_state)
        else:
            depot_nsam.update_action(grounded_action=action_call, previous_state=pre_state, next_state=next_state)

    assert len(depot_nsam.storage[test_action_name].convex_hull_learner.data) == 2
    assert depot_nsam.storage[test_action_name].convex_hull_learner._gsp_base is not None
    assert depot_nsam.storage[test_action_name].convex_hull_learner._complementary_base is not None
    assert depot_nsam.storage[test_action_name].convex_hull_learner._convex_hull is None


def test_update_action_for_the_second_time_adds_the_point_to_the_dataset_and_creates_initial_convex_hull(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    test_action_name = "drive"
    relevant_triplet_indexes = [0, 4, 5]
    for triplet in relevant_triplet_indexes:
        pre_state = depot_observation.components[triplet].previous_state
        action_call = depot_observation.components[triplet].grounded_action_call
        next_state = depot_observation.components[triplet].next_state
        sync_snapshot(depot_nsam, depot_observation.components[triplet], depot_observation.grounded_objects)
        if triplet == 0:
            depot_nsam.add_new_action(grounded_action=action_call, previous_state=pre_state, next_state=next_state)
        else:
            depot_nsam.update_action(grounded_action=action_call, previous_state=pre_state, next_state=next_state)

    assert len(depot_nsam.storage[test_action_name].convex_hull_learner.data) == 3
    assert depot_nsam.storage[test_action_name].convex_hull_learner._gsp_base is not None
    assert depot_nsam.storage[test_action_name].convex_hull_learner._complementary_base is not None
    assert depot_nsam.storage[test_action_name].convex_hull_learner._convex_hull is not None


def test_update_action_adds_discrete_preconditions_to_the_learned_action(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    initial_state = depot_observation.components[0].previous_state
    action_call = depot_observation.components[0].grounded_action_call
    next_state = depot_observation.components[0].next_state
    sync_snapshot(depot_nsam, depot_observation.components[0], depot_observation.grounded_objects)
    depot_nsam.add_new_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    depot_nsam.update_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    learned_action = depot_nsam.partial_domain.actions[action_call.name]
    action_discrete_preconditions = [
        precondition for _, precondition in learned_action.preconditions if isinstance(precondition, Predicate)
    ]
    assert len(action_discrete_preconditions) > 0


def test_update_action_adds_the_required_predicates_to_the_action_preconditions(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    initial_state = depot_observation.components[0].previous_state
    action_call = depot_observation.components[0].grounded_action_call
    next_state = depot_observation.components[0].next_state
    sync_snapshot(depot_nsam, depot_observation.components[0], depot_observation.grounded_objects)
    depot_nsam.add_new_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    depot_nsam.update_action(grounded_action=action_call, previous_state=initial_state, next_state=next_state)
    learned_action = depot_nsam.partial_domain.actions[action_call.name]
    action_discrete_preconditions = [
        precondition for _, precondition in learned_action.preconditions if isinstance(precondition, Predicate)
    ]
    preconditions_str = {precondition.untyped_representation for precondition in action_discrete_preconditions}
    assert preconditions_str.issuperset({"(at ?x ?y)"})


def test_handle_single_trajectory_component_does_not_remove_the_required_predicates_to_the_action_preconditions(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    depot_nsam.current_trajectory_objects = depot_observation.grounded_objects
    depot_nsam.handle_single_trajectory_component(depot_observation.components[0])
    learned_action = depot_nsam.partial_domain.actions["drive"]
    action_discrete_preconditions = [
        precondition for _, precondition in learned_action.preconditions if isinstance(precondition, Predicate)
    ]
    preconditions_str = {precondition.untyped_representation for precondition in action_discrete_preconditions}
    assert preconditions_str.issuperset({"(at ?x ?y)"})


def test_learn_action_model_returns_learned_model(
    depot_nsam: IncrementalNumericSAMLearner, depot_observation: Observation
):
    learned_model, learning_metadata = depot_nsam.learn_action_model([depot_observation])
    print()
    print(learning_metadata)
    print(learned_model.to_pddl())


def test_learn_action_model_for_satellite_domain_returns_learned_model(
    satellite_nsam: IncrementalNumericSAMLearner, satellite_numeric_observation: Observation
):
    learned_model, learning_metadata = satellite_nsam.learn_action_model([satellite_numeric_observation])
    print()
    print(learning_metadata)
    print(learned_model.to_pddl())


def test_learn_action_model_for_satellite_with_problematic_trajectory_domain_returns_learned_model(
    satellite_nsam: IncrementalNumericSAMLearner, satellite_observation_problematic: Observation
):
    learned_model, learning_metadata = satellite_nsam.learn_action_model([satellite_observation_problematic])
    print()
    print(learning_metadata)
    print(learned_model.to_pddl())


def test_learn_action_model_with_minecraft_domain_creates_domain_with_correct_preconditions_and_effects(
    minecraft_nsam: IncrementalNumericSAMLearner, minecraft_observation: Observation
):
    learned_model, learning_metadata = minecraft_nsam.learn_action_model([minecraft_observation])
    print()
    print(learning_metadata)
    print(learned_model.to_pddl())


def test_learn_action_model_with_minecraft_medium_domain_creates_domain_with_correct_preconditions_and_effects(
    minecraft_medium_sam: IncrementalNumericSAMLearner, minecraft_medium_observation: Observation
):
    learned_model, learning_metadata = minecraft_medium_sam.learn_action_model([minecraft_medium_observation])
    print()
    print(learning_metadata)
    print(learned_model.to_pddl())


def test_learn_action_model_with_minecraft_small_domain_creates_domain_with_correct_preconditions_and_effects(
    minecraft_small_sam: IncrementalNumericSAMLearner, minecraft_small_observation: Observation
):
    learned_model, learning_metadata = minecraft_small_sam.learn_action_model([minecraft_small_observation])
    print()
    print(learning_metadata)
    print(learned_model.to_pddl())
