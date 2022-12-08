# checks if two big_ints are the same
# input:  storage | big_int1, big_int2
# output: score   | big_int_eq

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library big_int1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int1] set","color":"red"},{"text":" ...aoc_library:functions/big_int/equals","color":"aqua"}]
execute if score dev aoc_const matches 1 unless data storage aoc:library big_int2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int2] set","color":"red"},{"text":" ...aoc_library:functions/big_int/equals","color":"aqua"}]

# check if they're the same
data modify storage aoc:library temp_big_int set from storage aoc:library big_int1
execute store result score not_eq aoc_calc run data modify storage aoc:library temp_big_int set from storage aoc:library big_int2

# return value
scoreboard players set big_int_eq aoc_calc 1
execute if score not_eq aoc_calc matches 1 run scoreboard players set big_int_eq aoc_calc 0

# clean up
data remove storage aoc:library temp_big_int
