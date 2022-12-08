# converts a char to its int value
# input:  storage | char
# output: score   | num, num_invalid


# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library char run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [char] set","color":"red"},{"text":" ...aoc_library:functions/char/to_int","color":"aqua"}]

# set up numbers
scoreboard players set num_invalid aoc_calc 0
scoreboard players set num aoc_calc 10
scoreboard players set char_last aoc_calc 0
data merge storage aoc:library {chars:['0','1','2','3','4','5','6','7','8','9']}

# check all numbers
function aoc_library:char/helper_functions/to_int_check

# raise invalid flag if value not found
execute if score not_eq aoc_calc matches 1 run scoreboard players set num_invalid aoc_calc 1

# clean up
data remove storage aoc:library chars
