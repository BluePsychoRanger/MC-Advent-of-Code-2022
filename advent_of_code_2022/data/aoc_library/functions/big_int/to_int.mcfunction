# converts an int to a big_int
# input:  score   | num
# output: storage | big_int


# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library big_int run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int] set","color":"red"},{"text":" ...aoc_library:functions/string/to_int","color":"aqua"}]

data modify storage aoc:library big_int_temp set from storage aoc:library big_int
execute store result score i_big_int_to_int aoc_calc run data get storage aoc:library big_int

# split numbers by digit
scoreboard players set num aoc_calc 0
function aoc_library:big_int/helper_functions/to_int_loop
