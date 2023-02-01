
# Numeric Safe Action Model Learning Framework
SAM learning algorithm for numeric action model learning.

## Installation

The following explains how to install the SAM-Learning framework.
Notice, the code works on linux machines due to its dependencies on planners and validators that only work on linux machines.

### Needed external tools:
1. **ENHSP solver** - can be downloaded from [here](https://sites.google.com/view/enhsp/). 
   2.  **Note** - for this code we require the binary code of the latest version of ENHSP (20 currently) with the jar file. 
2. **Metric-FF planner** - can be downloaded from [here](https://fai.cs.uni-saarland.de/hoffmann/metric-ff.html). In this algorithm, we use version 2.1 of Metric-FF which is the latest version.
3. **VAL validation algorithm** - can be downloaded from [here](https://github.com/KCL-Planning/VAL). Use the instructions given in the repository to install VAL.


### Environment variables

* 'METRIC_FF_DIRECTORY': Directory of the compiled metric-FF planner.
  * \<path to containing directory>/Metric-FF-v2.1/
* 'ENHSP_FILE_PATH': Path to the compiled ENHSP planner (the jar file).
  * \<path to containing directory>/enhsp.jar
* 'CONVEX_HULL_ERROR_PATH': Path to the file that will contain the errors raised from the convex hull algorithm. Used for future debugging purposes.
  * \<path to containing directory>/convex_hull_error.txt
* 'VALIDATOR_DIRECTORY': Directory containing VAL compiled code.
  * \<path to containing directory>/VAL/

### Code initialization

* Clone the content of the repository from [GitHub](https://github.com/Search-BGU/numeric-sam.git).
* Install the dependencies using `pip install -r requirements.txt`.
* Set the required environment variables.
* Run the tests using `pytest` on the code to validate the installation.

## Usage

To run the algorithm end-to-end there are three stages:
1. trajectory creation.
2. model learning.
3. validation.

The first stage is the trajectory creation stage, which is independent from the latter stages.
The second and third stages are dependent on the first stage since the process will not run without trajectories.
The algorithm

* Create a directory containing the **domain file**, the **problems** and, in case that the tested domain is numeric, a mapping file that contains a mapping of the preconditions to their respected fluents.
For example - _sattelite_fluents.json_.
```
{
    "turn_to": ["(fuel ?s)", "(slew_time ?d_new ?d_prev)"],
    "switch_on": [],
    "switch_off": [],
    "calibrate": [],
    "take_image": ["(data_capacity ?s)", "(data ?d ?m)"]
}
```

* Create trajectories on solved problems using the [Trajectory Generator](trajectory_creators/experiments_trajectories_creator.py) script.

```
((:init (= (recharges ) 0.0) (= (energy rover0) 50.0)
(operator: (calibrate rover0 camera2 objective1 waypoint3))
(:state (= (recharges ) 0.0) (= (energy rover0) 48.0) (= (energy rover1) 50.0) (visible waypoint2 waypoint1) 
...
```

* Run the learning algorithm using the [Algorithm Runner](experiments/planning_with_offline_learning.py) script with the following configurations.
  * `--working_directory_path` - The directory that contains the domain file, the problems and the mapping file.
  * `--domain_file_name` - The name of the domain file including extension.
  * `--learning_algorithm` - The learning algorithm to use.
  * `--fluents_map_path` - The path to the mapping file.
  * `--solver_type` - The type of planner to use - metric-FF, ENHSP or Fast Downward.
  * `--executing_agents` - The name of the agents that are partaking in the execution (in case this is a MA problem).

For more information, run the script with the `-h` flag.

The output of the algorithm is in the results directory. The statistics include the following:

* <algorithm_name>_all_folds_solving_stats.csv - The statistics regarding the number of problems solved with each number of input trajectories for each fold.

| learning_algorithm | num_trajectories | num_trajectory_triplets | ok  | no_solution | timeout | not_applicable | goal_not_achieved |
|--------------------|------------------|-------------------------|-----|-------------|---------|----------------|-------------------|
| numeric_sam                  | 1                | 10                      | 0   | 1           | 1       | 0              | 0                 |
| numeric_sam                  | 3                | 49                      | 2   | 0           | 0       | 0              | 0                 |

* <algorithm_name>_<domain_name>_numeric_learning_performance_stats.csv - The statistics regarding the numeric learning performance of the algorithm. 

| action_name | num_trajectories | ratio_actions_learned | precondition_precision | precondition_recall | effects_mse | 
|--------------------|------------------|-----------------------|------------------------|---------------------|-------------|
| navigate                  | 234              | 1                     | 0.75                   | 1                   | 0           | 
| recharge                  | 234              | 1                     | 0.82                   | 1                   | 0           | 

* <algorithm_name>_all_folds_numeric_learning_stats.csv - The statistics regarding the numeric and discrete action learning performance.

| learning_algorithm | domain_name | num_trajectories | total_number_of_actions | #numeric_actions_learned_ok | #numeric_actions_no_solution | #numeric_actions_infinite_number_solutions | model_precision | model_recall | model_f1_score |
|--------------------|-------------|------------------|-------------------------|---------------------------|------------------------------|--------------------------------------------|--------------------|--------------------|----------------|
| numeric_sam                  | sattelite      | 234                | 10                      | 2                       | 3                            | 5                                          | 1                   | 0.75     | 0.83           |


## License

This work is licensed under the MIT License.