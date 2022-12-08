# checks if two chars are the same
# input:  storage | char1, char2
# output: score   | char_eq

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library char1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [char1] set","color":"red"},{"text":" ...aoc_library:functions/char/equals","color":"aqua"}]
execute if score dev aoc_const matches 1 unless data storage aoc:library char2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [char2] set","color":"red"},{"text":" ...aoc_library:functions/char/equals","color":"aqua"}]

# check if they're the same
data modify storage aoc:library temp_char set from storage aoc:library char1
execute store result score not_eq aoc_calc run data modify storage aoc:library temp_char set from storage aoc:library char2

# return value
scoreboard players set char_eq aoc_calc 1
execute if score not_eq aoc_calc matches 1 run scoreboard players set char_eq aoc_calc 0

# clean up
data remove storage aoc:library temp_char
