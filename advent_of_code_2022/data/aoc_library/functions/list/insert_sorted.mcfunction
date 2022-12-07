# converts a list of strings to a list of ints
# input:  storage | list
# output: storage | list

# error checking
execute unless score num bpr_aoc matches -2147483648..2147483647 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [num] set","color":"red"},{"text":" ...aoc_library:functions/list/insert_sorted","color":"aqua"}]
execute unless data storage bpr:aoc/library list run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list] set","color":"red"},{"text":" ...aoc_library:functions/list/insert_sorted","color":"aqua"}]

# get new list
data merge storage bpr:aoc/library {list_tail:[]}
execute store result score i_list_insert_sorted bpr_aoc run data get storage bpr:aoc/library list
function aoc_library:list/helper_functions/insert_sorted_loop

# update list
execute store result storage bpr:aoc/library val int 1 run scoreboard players get num bpr_aoc
data modify storage bpr:aoc/library list append from storage bpr:aoc/library val
data modify storage bpr:aoc/library list append from storage bpr:aoc/library list_tail[]
data remove storage bpr:aoc/library list_tail
