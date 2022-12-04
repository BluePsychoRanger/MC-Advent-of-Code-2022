# converts a char to its int value
# input:  storage | char
# output: score   | num, num_invalid


# error checking
execute unless data storage bpr:aoc/library char run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [char] set","color":"red"},{"text":" ...aoc_library:functions/char/to_int","color":"aqua"}]

# set up numbers
scoreboard players set num_invalid bpr_aoc 0
scoreboard players set num bpr_aoc 10
scoreboard players set char_last bpr_aoc 0
data merge storage bpr:aoc/library {chars:['0','1','2','3','4','5','6','7','8','9']}

# check all numbers
function aoc_library:char/helper_functions/to_int_check

# raise invalid flag if value not found
execute if score not_eq bpr_aoc matches 1 run scoreboard players set num_invalid bpr_aoc 1

# clean up
data remove storage bpr:aoc/library chars
