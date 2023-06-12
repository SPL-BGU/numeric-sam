"""Constants for the tests."""
import os
from pathlib import Path
from typing import Dict, List

from pddl_plus_parser.models import PDDLType, Predicate, PDDLFunction, ObservedComponent, PDDLObject, \
    CompoundPrecondition

from sam_learning import SAMLearner

CWD = os.getcwd()
EXAMPLES_DIR_PATH = Path(CWD, "examples")
LOGISTICS_DOMAIN_PATH = EXAMPLES_DIR_PATH / "domain-logistics.pddl"
WOODWORKING_DOMAIN_PATH = EXAMPLES_DIR_PATH / "woodworking-domain.pddl"
WOODWORKING_PROBLEM_PATH = EXAMPLES_DIR_PATH / "woodworking_problem.pddl"
WOODWORKING_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "woodworking_trajectory.trajectory"
DEPOTS_NUMERIC_DOMAIN_PATH = EXAMPLES_DIR_PATH / "depot_numeric.pddl"
DEPOTS_NUMERIC_PROBLEM_PATH = EXAMPLES_DIR_PATH / "pfile2.pddl"
ELEVATORS_DOMAIN_PATH = EXAMPLES_DIR_PATH / "elevators_domain.pddl"
ELEVATORS_PROBLEM_PATH = EXAMPLES_DIR_PATH / "elevators_p03.pddl"
ELEVATORS_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "test_trajectory"
DEPOT_NUMERIC_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "test_numeric_trajectory"
DEPOT_FLUENTS_MAP_PATH = EXAMPLES_DIR_PATH / "depot_fluents_map.json"

SATELLITE_DOMAIN_PATH = EXAMPLES_DIR_PATH / "metricSat.pddl"
SATELLITE_PROBLEM_PATH = EXAMPLES_DIR_PATH / "pfile3.pddl"
SATELLITE_NUMERIC_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "pfile3.trajectory"

SATELLITE_PROBLEMATIC_PROBLEM_PATH = EXAMPLES_DIR_PATH / "pfile1_sat.pddl"
SATELLITE_PROBLEMATIC_NUMERIC_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "pfile1_sat.trajectory"

SATELLITE_FLUENTS_MAP_PATH = EXAMPLES_DIR_PATH / "satellite_fluents_map.json"

SAILING_EXPECTED_DOMAIN_PATH = EXAMPLES_DIR_PATH / "sailing_expected_domain.pddl"
SAILING_LEARNED_DOMAIN_PATH = EXAMPLES_DIR_PATH / "sailing_domain.pddl"
SAILING_PROBLEM_PATH = EXAMPLES_DIR_PATH / "prob_sailing.pddl"
SAILING_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "sailing_observation.trajectory"

WOODWORKING_COMBINED_DOMAIN_PATH = EXAMPLES_DIR_PATH / "woodworking_combined_domain.pddl"
WOODWORKING_COMBINED_PROBLEM_PATH = EXAMPLES_DIR_PATH / "woodworking_combined_problem.pddl"
WOODWORKING_COMBINED_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "ma_woodworking_trajectory.trajectory"

ROVERS_COMBINED_DOMAIN_PATH = EXAMPLES_DIR_PATH / "rover_combined_domain.pddl"
ROVERS_COMBINED_PROBLEM_PATH = EXAMPLES_DIR_PATH / "rovers_conflicing_actions_problem.pddl"
ROVERS_COMBINED_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "rovers_conflicting_actions_trajectory.trajectory"

SPIDER_DOMAIN_PATH = EXAMPLES_DIR_PATH / "spider_domain.pddl"
SPIDER_PROBLEM_PATH = EXAMPLES_DIR_PATH / "spider_problem.pddl"
SPIDER_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "spider_trajectory.trajectory"

NURIKABE_DOMAIN_PATH = EXAMPLES_DIR_PATH / "nurikabe_domain.pddl"
NURIKABE_PROBLEM_PATH = EXAMPLES_DIR_PATH / "nurikabe_pfile_random-9x9-107.pddl"
NURIKABE_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "nurikabe_pfile_random-9x9-107.trajectory"

ADL_SATELLITE_DOMAIN_PATH = EXAMPLES_DIR_PATH / "adlSat.pddl"
ADL_SATELLITE_PROBLEM_PATH = EXAMPLES_DIR_PATH / "adlSat_problem.pddl"
ADL_SATELLITE_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "adlSat_trajectory.trajectory"

MINECRAFT_DOMAIN_PATH = EXAMPLES_DIR_PATH / "minecraft_domain.pddl"
MINECRAFT_PROBLEM_PATH = EXAMPLES_DIR_PATH / "minecraft_pfile0.pddl"
MINECRAFT_TRAJECTORY_PATH = EXAMPLES_DIR_PATH / "minecraft_pfile0.trajectory"
MINECRAFT_FLUENTS_MAP_PATH = EXAMPLES_DIR_PATH / "minecraft_fluents_map.json"

OBJECT_TYPE = PDDLType(name="object")
AGENT_TYPE = PDDLType(name="agent")
CITY_TYPE = PDDLType(name="city", parent=OBJECT_TYPE)
WOODOBJ_TYPE = PDDLType(name="woodobj", parent=OBJECT_TYPE)
SURFACE_TYPE = PDDLType(name="surface", parent=OBJECT_TYPE)
TREATMENT_STATUS_TYPE = PDDLType(name="treatmentstatus", parent=OBJECT_TYPE)
COLOR_TYPE = PDDLType(name="acolour", parent=OBJECT_TYPE)
PART_TYPE = PDDLType(name="part", parent=WOODOBJ_TYPE)
TAXI_TYPE = PDDLType(name="taxi", parent=AGENT_TYPE)
TRUCK_TYPE = PDDLType(name="truck", parent=AGENT_TYPE)
CRATE_TYPE = PDDLType(name="crate", parent=OBJECT_TYPE)
AIRPLANE_TYPE = PDDLType(name="airplane", parent=AGENT_TYPE)
LOCATION_TYPE = PDDLType(name="location", parent=OBJECT_TYPE)
COUNT_TYPE = PDDLType(name="count", parent=OBJECT_TYPE)

AT_TRUCK_PREDICATE = Predicate(name="at",
                               signature={"?a": AGENT_TYPE,
                                          "?loc": LOCATION_TYPE})

FUEL_COST_FUNCTION = PDDLFunction(name="fuel-cost", signature={})
LOAD_LIMIT_TRAJECTORY_FUNCTION = PDDLFunction(name="load_limit", signature={"?z": TRUCK_TYPE})
LOAD_LIMIT_GROUNDED_TRAJECTORY_FUNCTION = PDDLFunction(name="load_limit", signature={"truck1": TRUCK_TYPE})
CURRENT_LOAD_TRAJECTORY_FUNCTION = PDDLFunction(name="current_load", signature={"?z": TRUCK_TYPE})
CURRENT_LOAD_GROUNDED_TRAJECTORY_FUNCTION = PDDLFunction(name="current_load", signature={"truck1": TRUCK_TYPE})
WEIGHT_FUNCTION = PDDLFunction(name="weight", signature={"?c": CRATE_TYPE})


def sync_snapshot(sam_learning: SAMLearner, component: ObservedComponent,
                  trajectory_objects: Dict[str, PDDLObject], should_include_all_objects: bool = False) -> None:
    previous_state = component.previous_state
    next_state = component.next_state
    test_action_call = component.grounded_action_call
    sam_learning.current_trajectory_objects = trajectory_objects
    if should_include_all_objects:
        all_types = [pddl_type for pddl_type in sam_learning.partial_domain.types if pddl_type != "object"]
    else:
        all_types = []

    sam_learning.triplet_snapshot.create_snapshot(
        previous_state=previous_state, next_state=next_state, current_action=test_action_call,
        observation_objects=trajectory_objects, specific_types=all_types)


def extract_preconditions_predicates(compound_preconditions: CompoundPrecondition) -> List[Predicate]:
    predicates = []
    for _, precond in compound_preconditions:
        if isinstance(precond, Predicate):
            predicates.append(precond)

    return predicates
