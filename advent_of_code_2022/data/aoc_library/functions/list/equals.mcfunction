# checks if two lists are exactly the same
# input:  storage | list1, list2
# output: score   | list_eq

# error checking
execute unless data storage bpr:aoc/library list1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list1] set","color":"red"},{"text":" ...aoc_library:functions/list/equals (line 1)","color":"aqua"}]
execute unless data storage bpr:aoc/library list2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list2] set","color":"red"},{"text":" ...aoc_library:functions/list/equals (line 2)","color":"aqua"}]

# check if they're the same
data modify storage bpr:aoc/library temp_list set from storage bpr:aoc/library list1
execute store result score not_eq bpr_aoc run data modify storage bpr:aoc/library temp_list set from storage bpr:aoc/library list2

# return value
scoreboard players set list_eq bpr_aoc 1
execute if score not_eq bpr_aoc matches 1 run scoreboard players set list_eq bpr_aoc 0

# clean up
data remove storage bpr:aoc/library temp_list
