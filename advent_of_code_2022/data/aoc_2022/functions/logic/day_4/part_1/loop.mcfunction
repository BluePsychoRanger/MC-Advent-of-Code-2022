function aoc_library:io/next_string

# split string into array of strings, removing commas and dashes
data modify storage bpr:aoc/library delimeters set value [",","-"]
function aoc_library:io/tokenize
data modify storage bpr:aoc ints set from storage bpr:aoc/library strings

scoreboard players reset min1 bpr_aoc
scoreboard players reset max1 bpr_aoc
scoreboard players reset min2 bpr_aoc
scoreboard players reset max2 bpr_aoc

# get min1
data modify storage bpr:aoc/library string set from storage bpr:aoc ints[0]
function aoc_library:string/to_int
scoreboard players operation min1 bpr_aoc = num bpr_aoc
data remove storage bpr:aoc ints[0]

# get max1
data modify storage bpr:aoc/library string set from storage bpr:aoc ints[0]
function aoc_library:string/to_int
scoreboard players operation max1 bpr_aoc = num bpr_aoc
data remove storage bpr:aoc ints[0]

# get min2
data modify storage bpr:aoc/library string set from storage bpr:aoc ints[0]
function aoc_library:string/to_int
scoreboard players operation min2 bpr_aoc = num bpr_aoc
data remove storage bpr:aoc ints[0]

# get max2
data modify storage bpr:aoc/library string set from storage bpr:aoc ints[0]
function aoc_library:string/to_int
scoreboard players operation max2 bpr_aoc = num bpr_aoc
data remove storage bpr:aoc ints[0]

data remove storage bpr:aoc ints

scoreboard players set add bpr_aoc 0
execute if score min1 bpr_aoc <= min2 bpr_aoc if score max1 bpr_aoc >= max2 bpr_aoc run scoreboard players set add bpr_aoc 1
execute if score min2 bpr_aoc <= min1 bpr_aoc if score max2 bpr_aoc >= max1 bpr_aoc run scoreboard players set add bpr_aoc 1

scoreboard players operation answer bpr_aoc_answers += add bpr_aoc

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_4/part_1/loop
