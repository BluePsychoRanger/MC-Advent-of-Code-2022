# converts a list of strings to a list of ints
# input:  storage | list
# output: storage | list

# error checking
execute unless data storage bpr:aoc/library list run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list] set","color":"red"},{"text":" ...aoc_library:functions/list/reverse","color":"aqua"}]

# get new list
data merge storage bpr:aoc/library {new_list:[]}
execute store result score i_list_reverse bpr_aoc run data get storage bpr:aoc/library list
function aoc_library:list/helper_functions/reverse_loop

# replace original list with new list
data modify storage bpr:aoc/library list set from storage bpr:aoc/library new_list
data remove storage bpr:aoc/library new_list
