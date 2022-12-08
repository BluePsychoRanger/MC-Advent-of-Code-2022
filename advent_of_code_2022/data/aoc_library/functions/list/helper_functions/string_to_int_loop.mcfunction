# get next string as an int
data modify storage aoc:library string set from storage aoc:library list[0]
function aoc_library:string/to_int

# add int to new list
execute store result storage aoc:library num int 1 run scoreboard players get num aoc_calc
data modify storage aoc:library new_list append from storage aoc:library num
data remove storage aoc:library num

# loop for each string in list
scoreboard players remove i_list_string_to_int aoc_calc 1
data remove storage aoc:library list[0]
execute if score i_list_string_to_int aoc_calc matches 1.. run function aoc_library:list/helper_functions/string_to_int_loop
