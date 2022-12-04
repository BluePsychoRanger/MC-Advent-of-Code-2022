# checks if two strings are exactly the same
# input:  storage | string1, string2
# output: score   | string_eq


# error checking
execute unless data storage bpr:aoc/library string1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string1] set","color":"red"},{"text":" ...aoc_library:functions/string/equals","color":"aqua"}]
execute unless data storage bpr:aoc/library string2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string2] set","color":"red"},{"text":" ...aoc_library:functions/string/equals","color":"aqua"}]

# check if they're the same
data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string1
execute store result score not_eq bpr_aoc run data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string2

# return value
scoreboard players set string_eq bpr_aoc 1
execute if score not_eq bpr_aoc matches 1 run scoreboard players set string_eq bpr_aoc 0

# clean up
data remove storage bpr:aoc/library temp_string
