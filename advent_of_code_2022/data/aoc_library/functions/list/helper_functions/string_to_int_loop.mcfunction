# get next string as an int
data modify storage bpr:aoc/library string set from storage bpr:aoc/library list[0]
function aoc_library:string/to_int

# add int to new list
execute store result storage bpr:aoc/library num int 1 run scoreboard players get num bpr_aoc
data modify storage bpr:aoc/library new_list append from storage bpr:aoc/library num
data remove storage bpr:aoc/library num

# loop for each string in list
scoreboard players remove i_list_string_to_int bpr_aoc 1
data remove storage bpr:aoc/library list[0]
execute if score i_list_string_to_int bpr_aoc matches 1.. run function aoc_library:list/helper_functions/string_to_int_loop
