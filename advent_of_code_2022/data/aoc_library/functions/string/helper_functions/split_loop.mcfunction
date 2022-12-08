# check next index
scoreboard players remove i_string_split aoc_calc 1

# send to different stringX depending on index
execute if score i_string_split aoc_calc > split_index aoc_calc run data modify storage aoc:library string2 prepend from storage aoc:library temp_string[-1]
execute if score i_string_split aoc_calc <= split_index aoc_calc run data modify storage aoc:library string1 prepend from storage aoc:library temp_string[-1]

# loop for all chars of the string
data remove storage aoc:library temp_string[-1]
execute if score i_string_split aoc_calc matches 1.. run function aoc_library:string/helper_functions/split_loop
