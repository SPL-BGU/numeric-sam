"""Module tests for the numeric information gaining process."""
import pandas as pd
import pytest
from pddl_plus_parser.models import PDDLFunction, Predicate
from typing import List

from sam_learning.core import InformationGainLearner

TEST_ACTION_NAME = 'test_action'
TEST_FUNCTION_NAMES = ["(x)", "(y)", "(z)", "(w)"]
TEST_PREDICATE_NAMES = ["p", "q", "r", "s"]


@pytest.fixture
def test_predicates() -> List[Predicate]:
    predicates = []
    for p in TEST_PREDICATE_NAMES:
        predicates.append(Predicate(name=p, signature={}, is_positive=True))
        predicates.append(Predicate(name=p, signature={}, is_positive=False))

    return predicates


@pytest.fixture
def information_gain_learner_no_predicates() -> InformationGainLearner:
    return InformationGainLearner(
        action_name=TEST_ACTION_NAME, lifted_functions=TEST_FUNCTION_NAMES, lifted_predicates=[])


@pytest.fixture
def information_gain_learner_with_predicates(test_predicates: List[Predicate]) -> InformationGainLearner:
    return InformationGainLearner(
        action_name=TEST_ACTION_NAME, lifted_functions=TEST_FUNCTION_NAMES,
        lifted_predicates=[p.untyped_representation for p in test_predicates])


def test_locate_sample_in_df_locates_that_samples_exists_in_the_dataframe_and_returns_its_index(
        information_gain_learner_no_predicates: InformationGainLearner):
    test_dataframe = pd.DataFrame({
        "(x)": [1, 2, 3],
        "(y)": [1, 2, 3],
        "(z)": [1, 2, 3],
        "(w)": [1, 2, 3]
    })
    sample_to_locate = [1, 1, 1, 1]
    assert information_gain_learner_no_predicates._locate_sample_in_df(sample_to_locate, test_dataframe) == 0


def test_locate_sample_in_df_can_understand_that_sample_does_not_exists_in_dataframe_and_return_minus_one(
        information_gain_learner_no_predicates: InformationGainLearner):
    test_dataframe = pd.DataFrame({
        "(x)": [1, 2, 3],
        "(y)": [1, 2, 3],
        "(z)": [1, 2, 3],
        "(w)": [1, 2, 3]
    })
    sample_to_locate = [1, 2, 1, 2]
    assert information_gain_learner_no_predicates._locate_sample_in_df(sample_to_locate, test_dataframe) == -1


def test_add_positive_sample_adds_new_sample_to_the_existing_positive_dataframe(
        information_gain_learner_no_predicates: InformationGainLearner):
    test_dataframe = pd.DataFrame({
        "(x)": [1, 2, 3],
        "(y)": [1, 2, 3],
        "(z)": [1, 2, 3],
        "(w)": [1, 2, 3]
    })
    information_gain_learner_no_predicates.positive_samples_df = test_dataframe
    assert len(information_gain_learner_no_predicates.positive_samples_df) == 3
    new_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_sample[function_name] = new_func

    information_gain_learner_no_predicates.add_positive_sample(new_sample, set())
    assert len(information_gain_learner_no_predicates.positive_samples_df) == 4
    assert len(information_gain_learner_no_predicates.positive_samples_df.columns) == 4


def test_add_positive_sample_does_not_add_to_negative_samples(
        information_gain_learner_no_predicates: InformationGainLearner):
    test_dataframe = pd.DataFrame({
        "(x)": [1, 2, 3],
        "(y)": [1, 2, 3],
        "(z)": [1, 2, 3],
        "(w)": [1, 2, 3]
    })
    information_gain_learner_no_predicates.positive_samples_df = test_dataframe
    assert len(information_gain_learner_no_predicates.positive_samples_df) == 3
    new_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_sample[function_name] = new_func

    information_gain_learner_no_predicates.add_positive_sample(new_sample, set())
    assert len(information_gain_learner_no_predicates.negative_samples_df) == 0


def test_add_positive_sample_when_domain_contains_numeric_and_discrete_parts_removes_columns_that_are_no_longer_relevant_for_calculation(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    new_numeric_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_numeric_sample[function_name] = new_func

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    assert len(information_gain_learner_with_predicates.lifted_predicates) == 8
    assert len(information_gain_learner_with_predicates.positive_samples_df.columns.tolist()) == 8 \
           + len(TEST_FUNCTION_NAMES)

    information_gain_learner_with_predicates.add_positive_sample(new_numeric_sample, new_discrete_sample)
    assert len(information_gain_learner_with_predicates.lifted_predicates) == 4
    assert len(information_gain_learner_with_predicates.positive_samples_df.columns.tolist()) == 4 + \
           len(TEST_FUNCTION_NAMES)


def test_add_positive_sample_when_domain_contains_numeric_and_discrete_parts_adds_new_sample_to_the_existing_positive_dataframe_with_the_correct_values(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    new_numeric_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_numeric_sample[function_name] = new_func

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    assert len(information_gain_learner_with_predicates.positive_samples_df) == 0
    information_gain_learner_with_predicates.add_positive_sample(new_numeric_sample, new_discrete_sample)
    assert len(information_gain_learner_with_predicates.positive_samples_df) == 1
    positive_sample = information_gain_learner_with_predicates.positive_samples_df.iloc[0]
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        assert positive_sample[function_name] == 4 + index

    for index, predicate in enumerate(new_discrete_sample):
        assert positive_sample[predicate.untyped_representation] == 1


def test_add_negative_sample_when_domain_contains_numeric_and_discrete_parts_does_not_change_the_dimensionality_of_dataframes(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    new_numeric_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_numeric_sample[function_name] = new_func

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    assert len(information_gain_learner_with_predicates.lifted_predicates) == 8
    assert len(information_gain_learner_with_predicates.positive_samples_df.columns.tolist()) == 8 \
           + len(TEST_FUNCTION_NAMES)
    assert len(information_gain_learner_with_predicates.negative_samples_df.columns.tolist()) == 8 \
           + len(TEST_FUNCTION_NAMES)

    information_gain_learner_with_predicates.add_negative_sample(new_numeric_sample, new_discrete_sample)
    assert len(information_gain_learner_with_predicates.lifted_predicates) == 8
    assert len(information_gain_learner_with_predicates.positive_samples_df.columns.tolist()) == 8 \
           + len(TEST_FUNCTION_NAMES)
    assert len(information_gain_learner_with_predicates.negative_samples_df.columns.tolist()) == 8 \
           + len(TEST_FUNCTION_NAMES)


def test_add_negative_sample_when_domain_contains_numeric_and_discrete_parts_does_not_change_the_dimensionality_of_dataframes(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    new_numeric_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_numeric_sample[function_name] = new_func

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    information_gain_learner_with_predicates.add_negative_sample(new_numeric_sample, new_discrete_sample)
    negative_sample = information_gain_learner_with_predicates.negative_samples_df.iloc[0]
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        assert negative_sample[function_name] == 4 + index

    for predicate in test_predicates:
        if predicate in new_discrete_sample:
            assert negative_sample[predicate.untyped_representation] == 1
        else:
            assert negative_sample[predicate.untyped_representation] == 0


def test_add_negative_sample_adds_new_sample_to_the_existing_negative_dataframe(
        information_gain_learner_no_predicates: InformationGainLearner):
    test_dataframe = pd.DataFrame({
        "(x)": [1, 2, 3],
        "(y)": [1, 2, 3],
        "(z)": [1, 2, 3],
        "(w)": [1, 2, 3]
    })
    information_gain_learner_no_predicates.negative_samples_df = test_dataframe
    assert len(information_gain_learner_no_predicates.negative_samples_df) == 3
    new_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_sample[function_name] = new_func

    information_gain_learner_no_predicates.add_negative_sample(new_sample, set())
    assert len(information_gain_learner_no_predicates.negative_samples_df) == 4
    assert len(information_gain_learner_no_predicates.negative_samples_df.columns) == 4


def test_add_negative_sample_does_not_add_to_positive_samples(
        information_gain_learner_no_predicates: InformationGainLearner):
    test_dataframe = pd.DataFrame({
        "(x)": [1, 2, 3],
        "(y)": [1, 2, 3],
        "(z)": [1, 2, 3],
        "(w)": [1, 2, 3]
    })
    information_gain_learner_no_predicates.negative_samples_df = test_dataframe
    assert len(information_gain_learner_no_predicates.negative_samples_df) == 3
    new_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4 + index)
        new_sample[function_name] = new_func

    information_gain_learner_no_predicates.add_negative_sample(new_sample, set())
    assert len(information_gain_learner_no_predicates.positive_samples_df) == 0


def test_in_hull_captures_that_a_point_is_in_a_convex_hull_in_a_2d_plane(
        information_gain_learner_no_predicates: InformationGainLearner):
    hull_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.
    })
    point_to_test = pd.DataFrame({
        "(x)": [0.5],
        "(y)": [0.5]
    })
    convex_hull_array = hull_df.to_numpy()
    point_to_test_array = point_to_test.to_numpy()
    assert information_gain_learner_no_predicates._in_hull(point_to_test_array, convex_hull_array)


def test_in_hull_captures_that_a_point_is_not_in_a_convex_hull_in_a_2d_plane(
        information_gain_learner_no_predicates: InformationGainLearner):
    hull_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.
    })
    point_to_test = pd.DataFrame({
        "(x)": [2],
        "(y)": [2]
    })
    convex_hull_array = hull_df.to_numpy()
    point_to_test_array = point_to_test.to_numpy()
    assert not information_gain_learner_no_predicates._in_hull(point_to_test_array, convex_hull_array)


def test_in_hull_captures_that_more_than_one_point_is_in_2d_convex_hull(
        information_gain_learner_no_predicates: InformationGainLearner):
    hull_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.
    })
    points_to_test = pd.DataFrame({
        "(x)": [0.5, 0.6, 0.7, 2, 10],
        "(y)": [0.5, 0.6, 0.7, 2, 10]
    })
    convex_hull_array = hull_df.to_numpy()
    points_to_test_array = points_to_test.to_numpy()
    assert information_gain_learner_no_predicates._in_hull(points_to_test_array, convex_hull_array)


def test_in_hull_captures_that_more_than_one_point_is_in_1d_convex_hull(
        information_gain_learner_no_predicates: InformationGainLearner):
    hull_df = pd.DataFrame({
        "(x)": [0, 1],
    })
    points_to_test = pd.DataFrame({
        "(x)": [0.5, 0.6, 0.7],
    })
    convex_hull_array = hull_df.to_numpy()
    points_to_test_array = points_to_test.to_numpy()
    assert information_gain_learner_no_predicates._in_hull(points_to_test_array, convex_hull_array)


def test_in_hull_captures_that_point_is_in_1d_hull_when_given_only_one_test_point(
        information_gain_learner_no_predicates: InformationGainLearner):
    hull_df = pd.DataFrame({
        "(x)": [0, 1],
    })
    points_to_test = pd.DataFrame({
        "(x)": [0.5],
    })
    convex_hull_array = hull_df.to_numpy()
    points_to_test_array = points_to_test.to_numpy()
    assert information_gain_learner_no_predicates._in_hull(points_to_test_array, convex_hull_array)


def test_is_non_informative_safe_returns_true_when_the_point_is_in_the_positive_samples(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.

    })
    information_gain_learner_no_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    for function_name in positive_samples_df.columns:
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(0.5)
        new_sample[function_name] = new_func

    assert information_gain_learner_no_predicates._is_non_informative_safe(
        new_numeric_sample=new_sample, new_propositional_sample=set())


def test_is_non_informative_safe_returns_false_when_the_point_is_not_in_the_ch(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.

    })
    information_gain_learner_no_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    for function_name in positive_samples_df.columns:
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(1.5)
        new_sample[function_name] = new_func

    assert not information_gain_learner_no_predicates._is_non_informative_safe(
        new_numeric_sample=new_sample, new_propositional_sample=set())


def test_is_non_informative_safe_returns_false_when_the_point_is_not_in_range_when_only_one_function_exists(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 1],

    })
    information_gain_learner_no_predicates.lifted_functions = ["(x)"]
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    for function_name in positive_samples_df.columns:
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(1.5)
        new_sample[function_name] = new_func

    assert not information_gain_learner_no_predicates._is_non_informative_safe(
        new_numeric_sample=new_sample, new_propositional_sample=set())


def test_is_non_informative_safe_returns_true_when_the_point_is_in_range_when_only_one_function_exists(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 1],

    })
    information_gain_learner_no_predicates.lifted_functions = ["(x)"]
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    for function_name in positive_samples_df.columns:
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(1)
        new_sample[function_name] = new_func

    assert information_gain_learner_no_predicates._is_non_informative_safe(
        new_numeric_sample=new_sample, new_propositional_sample=set())


def test_is_non_informative_safe_returns_true_when_the_predicates_in_the_state_are_superset_of_existing_predicates(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    new_numeric_sample = {}
    for index, function_name in enumerate(["(x)", "(y)"]):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(0.5)
        new_numeric_sample[function_name] = new_func

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    positive_samples_df = pd.DataFrame({
        "(x)": [0, 1, 0, 1],
        "(y)": [0, 0, 1, 1],

    })
    information_gain_learner_with_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_with_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_with_predicates.lifted_predicates = [p.untyped_representation for p in new_discrete_sample]
    assert information_gain_learner_with_predicates._is_non_informative_safe(
        new_numeric_sample=new_numeric_sample, new_propositional_sample=new_discrete_sample)


def test_is_non_informative_safe_returns_false_when_predicates_are_contained_in_state_but_the_numeric_part_is_not_safe(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    new_numeric_sample = {}
    for index, function_name in enumerate(["(x)", "(y)"]):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(2.5)
        new_numeric_sample[function_name] = new_func

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    positive_samples_df = pd.DataFrame({
        "(x)": [0, 1, 0, 1],
        "(y)": [0, 0, 1, 1],

    })
    information_gain_learner_with_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_with_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_with_predicates.lifted_predicates = [p.untyped_representation for p in new_discrete_sample]
    assert not information_gain_learner_with_predicates._is_non_informative_safe(
        new_numeric_sample=new_numeric_sample, new_propositional_sample=test_predicates)


def test_is_non_informative_safe_returns_false_when_some_predicates_are_missing_but_the_ch_is_correct(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    new_numeric_sample = {}
    for index, function_name in enumerate(["(x)", "(y)"]):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(0.5)
        new_numeric_sample[function_name] = new_func

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    positive_samples_df = pd.DataFrame({
        "(x)": [0, 1, 0, 1],
        "(y)": [0, 0, 1, 1],

    })
    information_gain_learner_with_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_with_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_with_predicates.lifted_predicates = [p.untyped_representation for p in test_predicates]
    assert not information_gain_learner_with_predicates._is_non_informative_safe(
        new_numeric_sample=new_numeric_sample, new_propositional_sample=new_discrete_sample)


def test_is_non_informative_unsafe_returns_true_when_a_negative_point_is_in_the_ch_created_from_the_combined_model(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.

    })
    negative_samples_df = pd.DataFrame({
        "(x)": [0.5],
        "(y)": [1.5],
    })

    information_gain_learner_no_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    new_func = PDDLFunction(name="(x)", signature={})
    new_func.set_value(0.5)
    new_sample[new_func.name] = new_func
    new_func = PDDLFunction(name="(y)", signature={})
    new_func.set_value(2.0)
    new_sample[new_func.name] = new_func

    assert information_gain_learner_no_predicates._is_non_informative_unsafe(
        new_numeric_sample=new_sample, new_propositional_sample=set())


def test_is_non_informative_unsafe_returns_true_when_a_negative_point_is_in_the_ch_created_from_the_combined_model_and_the_discrete_model_is_correct(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.

    })

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    negative_discrete_data = {p.untyped_representation: [1] for p in new_discrete_sample}

    negative_samples_df = pd.DataFrame({
        "(x)": [0.5],
        "(y)": [1.5],
        **negative_discrete_data
    })
    information_gain_learner_with_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_with_predicates.lifted_predicates = [p.untyped_representation for p in new_discrete_sample]

    information_gain_learner_with_predicates.negative_samples_df = negative_samples_df
    information_gain_learner_with_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    new_func = PDDLFunction(name="(x)", signature={})
    new_func.set_value(0.5)
    new_sample[new_func.name] = new_func
    new_func = PDDLFunction(name="(y)", signature={})
    new_func.set_value(2.0)
    new_sample[new_func.name] = new_func

    assert information_gain_learner_with_predicates._is_non_informative_unsafe(
        new_numeric_sample=new_sample, new_propositional_sample=new_discrete_sample)


def test_is_non_informative_unsafe_returns_true_when_a_non_of_the_negative_samples_match_the_discrete_part_of_the_model(
        information_gain_learner_with_predicates: InformationGainLearner, test_predicates: List[Predicate]):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.

    })

    new_discrete_sample = set()
    for index, predicate in enumerate(test_predicates):
        if index % 2 != 0:
            new_discrete_sample.add(predicate.copy())

    negative_discrete_data = {p.untyped_representation: [int(index % 2 == 0)] for index, p in
                              enumerate(new_discrete_sample)}

    negative_samples_df = pd.DataFrame({
        "(x)": [0.5],
        "(y)": [1.5],
        **negative_discrete_data
    })
    information_gain_learner_with_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_with_predicates.lifted_predicates = [p.untyped_representation for p in new_discrete_sample]

    information_gain_learner_with_predicates.negative_samples_df = negative_samples_df
    information_gain_learner_with_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    new_func = PDDLFunction(name="(x)", signature={})
    new_func.set_value(0.5)
    new_sample[new_func.name] = new_func
    new_func = PDDLFunction(name="(y)", signature={})
    new_func.set_value(2.0)
    new_sample[new_func.name] = new_func

    assert not information_gain_learner_with_predicates._is_non_informative_unsafe(
        new_numeric_sample=new_sample, new_propositional_sample=new_discrete_sample)


def test_is_non_informative_unsafe_returns_false_when_no_negative_point_is_in_the_ch_created_from_the_combined_model(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.

    })
    negative_samples_df = pd.DataFrame({
        "(x)": [2.5, 3.5],
        "(y)": [4.5, 5.5],
    })

    information_gain_learner_no_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    new_sample = {}
    new_func = PDDLFunction(name="(x)", signature={})
    new_func.set_value(0.5)
    new_sample[new_func.name] = new_func
    new_func = PDDLFunction(name="(y)", signature={})
    new_func.set_value(2.0)
    new_sample[new_func.name] = new_func

    assert not information_gain_learner_no_predicates._is_non_informative_unsafe(
        new_numeric_sample=new_sample, new_propositional_sample=set())


def test_calculate_information_gain_when_not_enough_points_to_create_convex_hull_verifies_if_the_point_was_already_observed_negative(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [1, 2],
        "(y)": [1, 2],
        "(z)": [1, 2],
        "(w)": [1, 2]
    })
    negative_samples_df = pd.DataFrame({
        "(x)": [3, 4],
        "(y)": [3, 4],
        "(z)": [3, 4],
        "(w)": [3, 4]
    })
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    new_sample = {}
    for function_name in TEST_FUNCTION_NAMES:
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(4)
        new_sample[function_name] = new_func

    assert information_gain_learner_no_predicates.calculate_sample_information_gain(new_sample, set()) == 0


def test_calculate_information_gain_when_not_enough_points_to_create_convex_hull_verifies_if_the_point_was_already_observed_positive(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [1, 2],
        "(y)": [1, 2],
        "(z)": [1, 2],
        "(w)": [1, 2]
    })
    negative_samples_df = pd.DataFrame({
        "(x)": [3, 4],
        "(y)": [3, 4],
        "(z)": [3, 4],
        "(w)": [3, 4]
    })
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    new_sample = {}
    for function_name in TEST_FUNCTION_NAMES:
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(1)
        new_sample[function_name] = new_func

    assert information_gain_learner_no_predicates.calculate_sample_information_gain(new_sample, set()) == 0


def test_calculate_information_gain_when_not_enough_points_to_create_convex_hull_verifies_that_the_point_was_not_observed_in_the_negative_and_positive_samples(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [1, 2],
        "(y)": [1, 2],
        "(z)": [1, 2],
        "(w)": [1, 2]
    })
    negative_samples_df = pd.DataFrame({
        "(x)": [3, 4],
        "(y)": [3, 4],
        "(z)": [3, 4],
        "(w)": [3, 4]
    })
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    new_sample = {}
    for index, function_name in enumerate(TEST_FUNCTION_NAMES):
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(index)
        new_sample[function_name] = new_func

    assert information_gain_learner_no_predicates.calculate_sample_information_gain(new_sample, set()) > 0


def test_calculate_information_gain_when_can_create_convex_hull_and_point_is_in_ch_returns_that_the_point_is_not_informative(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.
    })
    negative_samples_df = pd.DataFrame({
        "(x)": [3, 4],
        "(y)": [3, 4],
    })
    information_gain_learner_no_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    new_sample = {}
    for function_name in ["(x)", "(y)"]:
        new_func = PDDLFunction(name=function_name, signature={})
        new_func.set_value(0.5)
        new_sample[function_name] = new_func

    assert information_gain_learner_no_predicates.calculate_sample_information_gain(new_sample, set()) == 0


def test_calculate_information_gain_returns_zero_when_new_point_combined_with_positive_points_creates_a_hull_that_includes_a_negative_sample(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.
    })
    negative_samples_df = pd.DataFrame({
        "(x)": [0.5, 4],
        "(y)": [1.5, 4],
    })
    information_gain_learner_no_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    new_sample = {}

    x_function = PDDLFunction(name="(x)", signature={})
    x_function.set_value(0.5)
    new_sample["(x)"] = x_function
    y_function = PDDLFunction(name="(y)", signature={})
    y_function.set_value(2.0)
    new_sample["(y)"] = y_function

    assert information_gain_learner_no_predicates.calculate_sample_information_gain(new_sample, set()) == 0


def test_calculate_information_gain_returns_value_greater_than_zero_when_new_point_should_be_informative(
        information_gain_learner_no_predicates: InformationGainLearner):
    positive_samples_df = pd.DataFrame({
        "(x)": [0, 0, 1, 1],
        "(y)": [0, 1, 0, 1]  # The convex hull is a square.
    })
    negative_samples_df = pd.DataFrame({
        "(x)": [0.5],
        "(y)": [1.5],
    })
    information_gain_learner_no_predicates.lifted_functions = ["(x)", "(y)"]
    information_gain_learner_no_predicates.positive_samples_df = positive_samples_df
    information_gain_learner_no_predicates.negative_samples_df = negative_samples_df
    new_sample = {}

    x_function = PDDLFunction(name="(x)", signature={})
    x_function.set_value(-0.5)
    new_sample["(x)"] = x_function
    y_function = PDDLFunction(name="(y)", signature={})
    y_function.set_value(-0.5)
    new_sample["(y)"] = y_function

    assert information_gain_learner_no_predicates.calculate_sample_information_gain(new_sample, set()) > 0
