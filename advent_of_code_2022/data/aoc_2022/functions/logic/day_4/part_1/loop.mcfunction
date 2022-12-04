function aoc_library:io/next_string

scoreboard players reset min1 bpr_aoc
scoreboard players reset max1 bpr_aoc
scoreboard players reset min2 bpr_aoc
scoreboard players reset max2 bpr_aoc

# get min1
function aoc_library:io/next_char
function aoc_library:io/char_to_int
scoreboard players operation min1 bpr_aoc = num bpr_aoc
function aoc_library:io/next_char
function aoc_library:io/char_to_int
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation min1 bpr_aoc *= 10 bpr_aoc_const
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation min1 bpr_aoc += num bpr_aoc

# clear dash
execute unless score num_invalid bpr_aoc matches 1 run function aoc_library:io/next_char

# get max1
function aoc_library:io/next_char
function aoc_library:io/char_to_int
scoreboard players operation max1 bpr_aoc = num bpr_aoc
function aoc_library:io/next_char
function aoc_library:io/char_to_int
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation max1 bpr_aoc *= 10 bpr_aoc_const
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation max1 bpr_aoc += num bpr_aoc

# clear comma
execute unless score num_invalid bpr_aoc matches 1 run function aoc_library:io/next_char

# get min2
function aoc_library:io/next_char
function aoc_library:io/char_to_int
scoreboard players operation min2 bpr_aoc = num bpr_aoc
function aoc_library:io/next_char
function aoc_library:io/char_to_int
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation min2 bpr_aoc *= 10 bpr_aoc_const
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation min2 bpr_aoc += num bpr_aoc

# clear dash
execute unless score num_invalid bpr_aoc matches 1 run function aoc_library:io/next_char

# get max2
function aoc_library:io/next_char
function aoc_library:io/char_to_int
scoreboard players operation max2 bpr_aoc = num bpr_aoc
function aoc_library:io/next_char
function aoc_library:io/char_to_int
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation max2 bpr_aoc *= 10 bpr_aoc_const
execute if score next_char bpr_aoc matches 1 unless score num_invalid bpr_aoc matches 1 run scoreboard players operation max2 bpr_aoc += num bpr_aoc

scoreboard players set add bpr_aoc 0
execute if score min1 bpr_aoc <= min2 bpr_aoc if score max1 bpr_aoc >= max2 bpr_aoc run scoreboard players set add bpr_aoc 1
execute if score min2 bpr_aoc <= min1 bpr_aoc if score max2 bpr_aoc >= max1 bpr_aoc run scoreboard players set add bpr_aoc 1

scoreboard players operation answer bpr_aoc_answers += add bpr_aoc

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_4/part_1/loop
