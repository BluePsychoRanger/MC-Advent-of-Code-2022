# get next char of string and convert it to a number
data modify storage aoc:library char set from storage aoc:library temp_string[0]
function aoc_library:char/to_int

# shift number to correct place
scoreboard players operation num_from_string aoc_calc *= 10 aoc_const
scoreboard players operation num_from_string aoc_calc += num aoc_calc

# loop for all chars in string
scoreboard players remove i_string_to_int aoc_calc 1
data remove storage aoc:library temp_string[0]
execute if score i_string_to_int aoc_calc matches 1.. run function aoc_library:string/helper_functions/to_int_loop
