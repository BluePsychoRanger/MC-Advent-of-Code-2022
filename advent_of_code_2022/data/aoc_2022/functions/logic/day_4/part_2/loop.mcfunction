function aoc_library:io/next_string

# split string into array of strings, removing commas and dashes
data modify storage bpr:aoc/library delimeters set value [",","-"]
function aoc_library:io/tokenize

# get min1
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation min1 bpr_aoc = num bpr_aoc

# get max1
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation max1 bpr_aoc = num bpr_aoc

# get min2
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation min2 bpr_aoc = num bpr_aoc

# get max2
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation max2 bpr_aoc = num bpr_aoc

scoreboard players set add bpr_aoc 0
execute if score max1 bpr_aoc >= min2 bpr_aoc if score min1 bpr_aoc <= max2 bpr_aoc run scoreboard players set add bpr_aoc 1
execute if score max2 bpr_aoc >= min1 bpr_aoc if score min2 bpr_aoc <= max1 bpr_aoc run scoreboard players set add bpr_aoc 1
scoreboard players operation answer bpr_aoc_answers += add bpr_aoc

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_4/part_2/loop
