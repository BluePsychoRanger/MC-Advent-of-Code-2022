# check next index
scoreboard players remove i_string_split bpr_aoc 1

# send to different stringX depending on index
execute if score i_string_split bpr_aoc > split_index bpr_aoc run data modify storage bpr:aoc/library string2 prepend from storage bpr:aoc/library temp_string[-1]
execute if score i_string_split bpr_aoc <= split_index bpr_aoc run data modify storage bpr:aoc/library string1 prepend from storage bpr:aoc/library temp_string[-1]

# loop for all chars of the string
data remove storage bpr:aoc/library temp_string[-1]
execute if score i_string_split bpr_aoc matches 1.. run function aoc_library:string/helper_functions/split_loop
