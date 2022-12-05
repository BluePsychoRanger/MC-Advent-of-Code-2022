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

function aoc_2022:logic/day_5/part_1/move_boxes

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_5/part_1/loop
