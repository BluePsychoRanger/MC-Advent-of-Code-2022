function aoc_library:io/next_string

# split string into array of strings, removing commas and dashes
data modify storage bpr:aoc/library delimeters set value [" "]
function aoc_library:io/tokenize

function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation move_count bpr_aoc = num bpr_aoc
function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation from bpr_aoc = num bpr_aoc
function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation to bpr_aoc = num bpr_aoc

data modify storage bpr:aoc new_stack set value []
function aoc_2022:logic/day_5/part_2/move_boxes
execute if score to bpr_aoc matches 1 run data modify storage bpr:aoc boxes[1] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 2 run data modify storage bpr:aoc boxes[2] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 3 run data modify storage bpr:aoc boxes[3] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 4 run data modify storage bpr:aoc boxes[4] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 5 run data modify storage bpr:aoc boxes[5] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 6 run data modify storage bpr:aoc boxes[6] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 7 run data modify storage bpr:aoc boxes[7] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 8 run data modify storage bpr:aoc boxes[8] append from storage bpr:aoc new_stack[]
execute if score to bpr_aoc matches 9 run data modify storage bpr:aoc boxes[9] append from storage bpr:aoc new_stack[]

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_5/part_2/loop
