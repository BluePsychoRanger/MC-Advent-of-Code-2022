# converts a list of strings to a list of ints
# input:  storage | list
# output: storage | list

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library list run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list] set","color":"red"},{"text":" ...aoc_library:functions/list/string_to_int","color":"aqua"}]

# get new list
data merge storage aoc:library {new_list:[]}
execute store result score i_list_string_to_int aoc_calc run data get storage aoc:library list
function aoc_library:list/helper_functions/string_to_int_loop

# replace original list with new list
data modify storage aoc:library list set from storage aoc:library new_list
data remove storage aoc:library new_list
