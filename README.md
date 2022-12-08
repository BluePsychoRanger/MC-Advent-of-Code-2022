# Advent of Code 2022 in Minecraft

## Computation and Design
All computations are done using datapacks. Inputs are generated with the `get_inputs.py` script and are parsed into the following format:

input text:
```
Hello
123 45

(0,-2)
```
parsed input:
```json
[["H","e","l","l","o"],["1","2","3"," ","4","5"],[],["(","0",",","-","2",")"]]
```


## Installation and Usage
### Manual Input
The `get_inputs.py` script will attempt to download and parse all of your input files, but if you would like to test other inputs, the manual inputs will override the automatic download. To run a manual input, create a `day_X.txt` file in the `manual_input` folder.
### Automatic Input
To automatically grab the input using your account, [advent-of-code-data](https://github.com/wimglenn/advent-of-code-data) should first be installed:
```
pip install advent-of-code-data
```
Then bind you AOC session ID using the [quickstart tutorial](https://github.com/wimglenn/advent-of-code-data#quickstart).

### Running the Script
Once you've set up the inputs, run the `get_input.py` script:
```
python get_inputs.py
```
### Installing the Datapack
Insert the datapack into your world (unzip the github download and put the `advent_of_code_2022` folder into the `datapacks` folder of your world), then run the desired `aoc_2022:_solve/day_x/part_x` function. Visualizations can be run from the `aoc_2022:visual/day_x/part_x` function.  
Function Examples:
```mcfunction
function aoc_2022:_solve/day_1/part_1
function aoc_2022:visual/day_8/part_2
```
