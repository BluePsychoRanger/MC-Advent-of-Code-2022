# checks if two strings are exactly the same
# input:  storage | string1, string2
# output: score   | string_eq


# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library string1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string1] set","color":"red"},{"text":" ...aoc_library:functions/string/equals","color":"aqua"}]
execute if score dev aoc_const matches 1 unless data storage aoc:library string2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string2] set","color":"red"},{"text":" ...aoc_library:functions/string/equals","color":"aqua"}]

# check if they're the same
data modify storage aoc:library temp_string set from storage aoc:library string1
execute store result score not_eq aoc_calc run data modify storage aoc:library temp_string set from storage aoc:library string2

# return value
scoreboard players set string_eq aoc_calc 1
execute if score not_eq aoc_calc matches 1 run scoreboard players set string_eq aoc_calc 0

# clean up
data remove storage aoc:library temp_string
