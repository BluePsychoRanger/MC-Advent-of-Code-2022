data modify storage bpr:aoc/library new_list append from storage bpr:aoc/library list[-1]

scoreboard players remove i_list_reverse bpr_aoc 1
data remove storage bpr:aoc/library list[-1]
execute if score i_list_reverse bpr_aoc matches 1.. run function aoc_library:list/helper_functions/reverse_loop
