# compares the values of two big_ints
# input:  storage | big_int1, big_int2
# output: score   | big_int_eq, big_int_lt, big_int_gt


# error checking
execute unless data storage bpr:aoc/library big_int1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int1] set","color":"red"},{"text":" ...aoc_library:functions/big_int/greater_than","color":"aqua"}]
execute unless data storage bpr:aoc/library big_int2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int2] set","color":"red"},{"text":" ...aoc_library:functions/big_int/greater_than","color":"aqua"}]

# set up variables
execute store result score big_int1_length bpr_aoc run data get storage bpr:aoc/library big_int1
execute store result score big_int2_length bpr_aoc run data get storage bpr:aoc/library big_int2
scoreboard players set big_int_eq bpr_aoc 0
scoreboard players set big_int_lt bpr_aoc 0
scoreboard players set big_int_gt bpr_aoc -1

# check if they're equal
execute if score big_int1_length bpr_aoc = big_int2_length bpr_aoc run function aoc_library:big_int/equals
# check if the array sizes differ
execute if score big_int1_length bpr_aoc > big_int2_length bpr_aoc run scoreboard players set big_int_gt bpr_aoc 1

# check values
execute if score big_int_eq bpr_aoc matches 0 if score big_int1_length bpr_aoc = big_int2_length bpr_aoc run data modify storage bpr:aoc/library big_int1_temp set from storage bpr:aoc/library big_int1
execute if score big_int_eq bpr_aoc matches 0 if score big_int1_length bpr_aoc = big_int2_length bpr_aoc run data modify storage bpr:aoc/library big_int2_temp set from storage bpr:aoc/library big_int2
execute if score big_int_eq bpr_aoc matches 0 if score big_int1_length bpr_aoc = big_int2_length bpr_aoc run function aoc_library:big_int/helper_functions/compare_loop
execute if score big_int_gt bpr_aoc matches -1 run scoreboard players set big_int_gt bpr_aoc 0

# if neither greater than nor equal to, it must be less than
execute if score big_int_eq bpr_aoc matches 0 if score big_int_gt bpr_aoc matches 0 run scoreboard players set big_int_lt bpr_aoc 1

# clean up
data remove storage bpr:aoc/library big_int1_temp
data remove storage bpr:aoc/library big_int2_temp
