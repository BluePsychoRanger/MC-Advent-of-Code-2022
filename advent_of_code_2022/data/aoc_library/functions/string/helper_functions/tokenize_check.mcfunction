# compare char to next delimeter
scoreboard players set not_eq aoc_calc 0
execute store result score not_eq aoc_calc run data modify storage aoc:library temp_delimeters[-1] set from storage aoc:library temp_string[0]
execute unless score not_eq aoc_calc matches 1 run scoreboard players set found_delim aoc_calc 1

# loop for all delimeters
scoreboard players remove i_string_delim aoc_calc 1
data remove storage aoc:library temp_delimeters[-1]
execute if score i_string_delim aoc_calc matches 1.. if score found_delim aoc_calc matches 0 run function aoc_library:string/helper_functions/tokenize_check
