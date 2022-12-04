# compare char to next delimeter
scoreboard players set not_eq bpr_aoc 0
execute store result score not_eq bpr_aoc run data modify storage bpr:aoc/library temp_delimeters[-1] set from storage bpr:aoc/library temp_string[0]
execute unless score not_eq bpr_aoc matches 1 run scoreboard players set found_delim bpr_aoc 1

# loop for all delimeters
scoreboard players remove i_string_delim bpr_aoc 1
data remove storage bpr:aoc/library temp_delimeters[-1]
execute if score i_string_delim bpr_aoc matches 1.. if score found_delim bpr_aoc matches 0 run function aoc_library:string/helper_functions/tokenize_check
