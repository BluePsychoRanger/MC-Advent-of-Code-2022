# checks if two lists are exactly the same
# input:  storage | list1, list2
# output: score   | list_eq

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library list1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list1] set","color":"red"},{"text":" ...aoc_library:functions/list/equals (line 1)","color":"aqua"}]
execute if score dev aoc_const matches 1 unless data storage aoc:library list2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list2] set","color":"red"},{"text":" ...aoc_library:functions/list/equals (line 2)","color":"aqua"}]

# check if they're the same
data modify storage aoc:library temp_list set from storage aoc:library list1
execute store result score not_eq aoc_calc run data modify storage aoc:library temp_list set from storage aoc:library list2

# return value
scoreboard players set list_eq aoc_calc 1
execute if score not_eq aoc_calc matches 1 run scoreboard players set list_eq aoc_calc 0

# clean up
data remove storage aoc:library temp_list
