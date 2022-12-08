# check if the first digit is zero
execute store result score digit aoc_calc run data get storage aoc:library big_int[0]
execute if score digit aoc_calc matches 0 run data remove storage aoc:library big_int[0]

# loop until the first digit isn't zero
scoreboard players remove big_int_length aoc_calc 1
execute if score big_int_length aoc_calc matches 2.. if score digit aoc_calc matches 0 run function aoc_library:big_int/helper_functions/remove_leading_zeros
