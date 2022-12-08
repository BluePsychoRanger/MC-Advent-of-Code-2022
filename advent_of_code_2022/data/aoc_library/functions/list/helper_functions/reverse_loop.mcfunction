# append last element of original list to new list
data modify storage aoc:library new_list append from storage aoc:library list[-1]
data remove storage aoc:library list[-1]

# loop for all elements of the list
scoreboard players remove i_list_reverse aoc_calc 1
execute if score i_list_reverse aoc_calc matches 1.. run function aoc_library:list/helper_functions/reverse_loop
