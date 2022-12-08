function aoc_library:io/next_string

# split string into array of strings, removing commas and dashes
data modify storage aoc:library delimeters set value [",","-"]
function aoc_library:io/tokenize

# get min1
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation min1 aoc_calc = num aoc_calc

# get max1
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation max1 aoc_calc = num aoc_calc

# get min2
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation min2 aoc_calc = num aoc_calc

# get max2
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation max2 aoc_calc = num aoc_calc

scoreboard players set add aoc_calc 0
execute if score min1 aoc_calc <= min2 aoc_calc if score max1 aoc_calc >= max2 aoc_calc run scoreboard players set add aoc_calc 1
execute if score min2 aoc_calc <= min1 aoc_calc if score max2 aoc_calc >= max1 aoc_calc run scoreboard players set add aoc_calc 1
scoreboard players operation answer aoc_answer += add aoc_calc

execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_4/part_1/loop
