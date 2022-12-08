# get next int
execute store result score list_val aoc_calc run data get storage aoc:library list[-1]

# if next int is larger than num, save it to the second half of the list
execute if score list_val aoc_calc > num aoc_calc run data modify storage aoc:library list_tail prepend from storage aoc:library list[-1]

# loop for each int in list that's greater than the value
execute if score list_val aoc_calc > num aoc_calc run data remove storage aoc:library list[-1]
scoreboard players remove i_list_insert_sorted aoc_calc 1
execute if score i_list_insert_sorted aoc_calc matches 1.. if score list_val aoc_calc > num aoc_calc run function aoc_library:list/helper_functions/insert_sorted_loop
