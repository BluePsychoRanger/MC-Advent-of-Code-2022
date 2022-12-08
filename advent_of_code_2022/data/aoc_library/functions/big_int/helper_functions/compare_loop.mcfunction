# get next digits
execute store result score digit1 aoc_calc run data get storage aoc:library big_int1_temp[0]
execute store result score digit2 aoc_calc run data get storage aoc:library big_int2_temp[0]

# compare digits
execute if score digit1 aoc_calc > digit2 aoc_calc run scoreboard players set big_int_gt aoc_calc 1
execute if score digit1 aoc_calc < digit2 aoc_calc run scoreboard players set big_int_gt aoc_calc 0

# loop for all digits
scoreboard players remove big_int1_length aoc_calc 1
scoreboard players remove big_int2_length aoc_calc 1
data remove storage aoc:library big_int1_temp[0]
data remove storage aoc:library big_int2_temp[0]
execute if score digit1 aoc_calc = digit2 aoc_calc if score big_int1_length aoc_calc matches 1.. run function aoc_library:big_int/helper_functions/compare_loop
