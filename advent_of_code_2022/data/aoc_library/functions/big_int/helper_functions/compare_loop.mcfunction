execute store result score digit1 bpr_aoc run data get storage bpr:aoc/library big_int1_temp[0]
execute store result score digit2 bpr_aoc run data get storage bpr:aoc/library big_int2_temp[0]

# compare digits
execute if score digit1 bpr_aoc > digit2 bpr_aoc run scoreboard players set big_int_gt bpr_aoc 1
execute if score digit1 bpr_aoc < digit2 bpr_aoc run scoreboard players set big_int_gt bpr_aoc 0

# clear digit
scoreboard players remove big_int1_length bpr_aoc 1
scoreboard players remove big_int2_length bpr_aoc 1
data remove storage bpr:aoc/library big_int1_temp[0]
data remove storage bpr:aoc/library big_int2_temp[0]

execute if score digit1 bpr_aoc = digit2 bpr_aoc if score big_int1_length bpr_aoc matches 1.. run function aoc_library:big_int/helper_functions/compare_loop
