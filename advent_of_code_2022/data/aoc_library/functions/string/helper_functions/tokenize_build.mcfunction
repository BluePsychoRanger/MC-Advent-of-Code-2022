# compare char to each delimeter
data modify storage aoc:library temp_delimeters set from storage aoc:library delimeters
execute store result score i_string_delim aoc_calc run data get storage aoc:library delimeters
scoreboard players set found_delim aoc_calc 0
execute if score i_string_delim aoc_calc matches 0 run scoreboard players set found_delim aoc_calc 1
execute if score i_string_delim aoc_calc matches 0 run data modify storage aoc:library new_string append from storage aoc:library temp_string[0]
execute if score i_string_delim aoc_calc matches 1.. run function aoc_library:string/helper_functions/tokenize_check

# add char to current string unless it's a delimeter
execute unless score found_delim aoc_calc matches 1 run data modify storage aoc:library new_string append from storage aoc:library temp_string[0]

# loop for all chars in string
scoreboard players remove i_string_tokenize aoc_calc 1
data remove storage aoc:library temp_string[0]
execute if score i_string_tokenize aoc_calc matches 1.. unless score found_delim aoc_calc matches 1 run function aoc_library:string/helper_functions/tokenize_build
