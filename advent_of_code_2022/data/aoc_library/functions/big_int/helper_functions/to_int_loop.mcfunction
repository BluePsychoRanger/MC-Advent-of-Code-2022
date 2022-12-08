# get next digit
execute store result score digit aoc_calc run data get storage aoc:library big_int[0]

# add digit to num
scoreboard players operation num aoc_calc *= 10 aoc_const
scoreboard players operation num aoc_calc += digit aoc_calc

# loop for all digits
data remove storage aoc:library big_int[0]
scoreboard players remove i_big_int_to_int aoc_calc 1
execute if score i_big_int_to_int aoc_calc matches 1.. run function aoc_library:big_int/helper_functions/to_int_loop
