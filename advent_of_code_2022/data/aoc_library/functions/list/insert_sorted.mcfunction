# converts a list of strings to a list of ints
# input:  storage | list
# output: storage | list

# error checking
execute if score dev aoc_const matches 1 unless score num aoc_calc matches -2147483648..2147483647 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [num] set","color":"red"},{"text":" ...aoc_library:functions/list/insert_sorted","color":"aqua"}]
execute if score dev aoc_const matches 1 unless data storage aoc:library list run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list] set","color":"red"},{"text":" ...aoc_library:functions/list/insert_sorted","color":"aqua"}]

# get new list
data merge storage aoc:library {list_tail:[]}
execute store result score i_list_insert_sorted aoc_calc run data get storage aoc:library list
function aoc_library:list/helper_functions/insert_sorted_loop

# update list
execute store result storage aoc:library val int 1 run scoreboard players get num aoc_calc
data modify storage aoc:library list append from storage aoc:library val
data modify storage aoc:library list append from storage aoc:library list_tail[]
data remove storage aoc:library list_tail
