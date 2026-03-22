from enum import Enum


class LearningAlgorithmType(Enum):
    sam_learning = 1
    esam_learning = 2
    numeric_sam = 3
    plan_miner = 5

    # To remove
    naive_nsam = 15
    naive_polysam = 16
    ma_sam_plus = 25


class SolverType(Enum):
    fast_downward = 1
    metric_ff = 2
    enhsp = 3
    fast_forward = 4


class SolutionOutputTypes(Enum):
    ok = 1
    no_solution = 2
    timeout = 3
    not_applicable = 4
    goal_not_achieved = 5
    solver_error = 6


class NegativePreconditionPolicy(Enum):
    no_remove = (1,)  # keep all learned preconditions
    soft = (2,)
    hard = (3,)  # no negative preconditions are allowed
    # allow only negative preconditions deducted form cnf solution


NUMERIC_PRECISION = "NUMERIC_PRECISION"
