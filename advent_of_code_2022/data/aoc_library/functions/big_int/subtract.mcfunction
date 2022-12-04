# subtracts two big_ints from each other (big_int1 - big_int2)
# input:  storage | big_int1, big_int2
# output: storage | big_int


# error checking
execute unless data storage bpr:aoc/library big_int1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int1] set","color":"red"},{"text":" ...aoc_library:functions/big_int/add (line 1)","color":"aqua"}]
execute unless data storage bpr:aoc/library big_int2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int2] set","color":"red"},{"text":" ...aoc_library:functions/big_int/add (line 2)","color":"aqua"}]

# set up variables
data modify storage bpr:aoc/library big_int1_temp set from storage bpr:aoc/library big_int1
data modify storage bpr:aoc/library big_int2_temp set from storage bpr:aoc/library big_int2
execute store result score big_int1_length bpr_aoc run data get storage bpr:aoc/library big_int1
execute store result score big_int2_length bpr_aoc run data get storage bpr:aoc/library big_int2
scoreboard players set carry_over bpr_aoc 0

# subtract the numbers digit by digit
data modify storage bpr:aoc/library big_int set value []
function aoc_library:big_int/helper_functions/subtract_loop

# remove any leading zeros
execute store result score big_int_length bpr_aoc run data get storage bpr:aoc/library big_int
function aoc_library:big_int/helper_functions/remove_leading_zeros

# clean up
data remove storage bpr:aoc/library big_int1_temp
data remove storage bpr:aoc/library big_int2_temp
