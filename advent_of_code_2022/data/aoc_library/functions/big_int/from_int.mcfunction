# converts an int to a big_int
# input:  score   | num
# output: storage | big_int


# error checking
execute if score dev aoc_const matches 1 unless score num aoc_calc matches 0.. run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"Invalid [num] set","color":"red"},{"text":" ...aoc_library:functions/big_int/from_int","color":"aqua"}]

# split numbers by digit
scoreboard players operation temp_num aoc_calc = num aoc_calc
data modify storage aoc:library big_int set value []
function aoc_library:big_int/helper_functions/from_int_loop
