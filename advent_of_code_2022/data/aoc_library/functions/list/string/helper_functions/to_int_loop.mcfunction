data modify storage bpr:aoc/library string set from storage bpr:aoc/library temp_list[0]
function aoc_library:string/to_int

execute store result storage bpr:aoc/library num int 1 run scoreboard players get num bpr_aoc
data modify storage bpr:aoc/library new_list append from storage bpr:aoc/library num
data remove storage bpr:aoc/library num

scoreboard players remove i_list_string_to_int bpr_aoc 1
data remove storage bpr:aoc/library temp_list[0]
execute if score i_list_string_to_int bpr_aoc matches 1.. run function aoc_library:list/string/helper_functions/to_int_loop
