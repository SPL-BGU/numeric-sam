
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

The first stage is the trajectory creation stage, which is independent of the latter stages.
The second and third stages are dependent on the first stage since the process will not run without trajectories.
The algorithm returns a safe action model that can be validated using the VAL algorithm.

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


## License

This work is licensed under the MIT License.