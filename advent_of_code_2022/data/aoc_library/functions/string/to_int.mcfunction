# converts a string to a number
# input:  storage | string
# output: score   | num

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/to_int (line 2)","color":"aqua"}]

# get string and length
data modify storage aoc:library temp_string set from storage aoc:library string
execute store result score i_string_to_int aoc_calc run data get storage aoc:library string

# set up variables
scoreboard players set num_from_string aoc_calc 0
scoreboard players set num_invalid aoc_calc 0
execute if score i_string_to_int aoc_calc matches 0 run scoreboard players set num_from_string aoc_calc -1
execute if score i_string_to_int aoc_calc matches 0 run scoreboard players set num_invalid aoc_calc 1

# check if it's negative
execute if score i_string_to_int aoc_calc matches 2.. run function aoc_library:string/helper_functions/to_int_neg_check

# get int
execute if score i_string_to_int aoc_calc matches 1.. run function aoc_library:string/helper_functions/to_int_loop
scoreboard players operation num aoc_calc = num_from_string aoc_calc
execute if score neg aoc_calc matches 1 run scoreboard players operation num aoc_calc *= -1 aoc_const

# clean up
data remove storage aoc:library temp_string
