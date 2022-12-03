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
To use this on your input, [advent-of-code-data](https://github.com/wimglenn/advent-of-code-data) should first be installed:
```
pip install advent-of-code-data
```
Then bind you AOC session ID using the [quickstart tutorial](https://github.com/wimglenn/advent-of-code-data#quickstart).

Once that's done, run the `get_input.py` script:
```
python get_inputs.py
```

Insert the datapack into your world and run the desired `aoc_2022:_solve/day_x/part_x` function.
