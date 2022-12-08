# converts a char to its ascii equivalent number
# input:  storage | char
# output: score   | num, num_invalid


# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library char run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [char] set","color":"red"},{"text":" ...aoc_library:functions/char/to_ascii","color":"aqua"}]

# set up numbers for uppercase letters
scoreboard players set num_invalid aoc_calc 0
scoreboard players set num aoc_calc 91
scoreboard players set char_last aoc_calc 65
data merge storage aoc:library {chars:['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']}

# check all uppercase letters
function aoc_library:char/helper_functions/to_int_check

# set up numbers for lowercase letters
execute if score not_eq aoc_calc matches 1 run scoreboard players set num aoc_calc 122
execute if score not_eq aoc_calc matches 1 run scoreboard players set char_last aoc_calc 97
execute if score not_eq aoc_calc matches 1 run data merge storage aoc:library {chars:['a','b','c','d','e','f','g','h','I','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']}

# check all lowercase letters
execute if score not_eq aoc_calc matches 1 run function aoc_library:char/helper_functions/to_int_check

# raise invalid flag if value not found
execute if score not_eq aoc_calc matches 1 run scoreboard players set num_invalid aoc_calc 1

# clean up
data remove storage aoc:library chars
