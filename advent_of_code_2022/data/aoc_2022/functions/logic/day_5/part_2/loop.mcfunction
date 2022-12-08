function aoc_library:io/next_string

# split string into array of strings, removing commas and dashes
data modify storage aoc:library delimeters set value [" "]
function aoc_library:io/tokenize

function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation move_count aoc_calc = num aoc_calc
function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation from aoc_calc = num aoc_calc
function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation to aoc_calc = num aoc_calc

data modify storage aoc:calc new_stack set value []
function aoc_2022:logic/day_5/part_2/move_boxes
execute if score to aoc_calc matches 1 run data modify storage aoc:calc boxes[1] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 2 run data modify storage aoc:calc boxes[2] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 3 run data modify storage aoc:calc boxes[3] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 4 run data modify storage aoc:calc boxes[4] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 5 run data modify storage aoc:calc boxes[5] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 6 run data modify storage aoc:calc boxes[6] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 7 run data modify storage aoc:calc boxes[7] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 8 run data modify storage aoc:calc boxes[8] append from storage aoc:calc new_stack[]
execute if score to aoc_calc matches 9 run data modify storage aoc:calc boxes[9] append from storage aoc:calc new_stack[]

execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_5/part_2/loop
