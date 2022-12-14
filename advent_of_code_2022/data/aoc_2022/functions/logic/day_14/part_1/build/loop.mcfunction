# get first pos
function aoc_library:io/next_string
function aoc_library:io/tokenize

function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result entity @s Pos[0] double 1 run scoreboard players get num aoc_calc
scoreboard players operation x1 aoc_calc = num aoc_calc

function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result entity @s Pos[2] double 1 run scoreboard players get num aoc_calc
scoreboard players operation z1 aoc_calc = num aoc_calc

# draw shape
execute at @s run function aoc_2022:logic/day_14/part_1/build/loop_line

# loop for all shapes
execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_14/part_1/build/loop
