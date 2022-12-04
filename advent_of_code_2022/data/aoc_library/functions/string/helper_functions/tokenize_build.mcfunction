data modify storage bpr:aoc/library temp_delimeters set from storage bpr:aoc/library delimeters
execute store result score i_string_delim bpr_aoc run data get storage bpr:aoc/library delimeters
scoreboard players set found_delim bpr_aoc 0
function aoc_library:string/helper_functions/tokenize_check
execute unless score found_delim bpr_aoc matches 1 run data modify storage bpr:aoc/library new_string append from storage bpr:aoc/library temp_string[0]

scoreboard players remove i_string_tokenize bpr_aoc 1
data remove storage bpr:aoc/library temp_string[0]
execute if score i_string_tokenize bpr_aoc matches 1.. unless score found_delim bpr_aoc matches 1 run function aoc_library:string/helper_functions/tokenize_build
