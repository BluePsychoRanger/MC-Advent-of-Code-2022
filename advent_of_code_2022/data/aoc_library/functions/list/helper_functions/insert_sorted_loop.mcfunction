# get next int
execute store result score list_val bpr_aoc run data get storage bpr:aoc/library list[-1]

# if next int is larger than num, save it to the second half of the list
execute if score list_val bpr_aoc > num bpr_aoc run data modify storage bpr:aoc/library list_tail prepend from storage bpr:aoc/library list[-1]

# loop for each int in list that's greater than the value
execute if score list_val bpr_aoc > num bpr_aoc run data remove storage bpr:aoc/library list[-1]
scoreboard players remove i_list_insert_sorted bpr_aoc 1
execute if score i_list_insert_sorted bpr_aoc matches 1.. if score list_val bpr_aoc > num bpr_aoc run function aoc_library:list/helper_functions/insert_sorted_loop
