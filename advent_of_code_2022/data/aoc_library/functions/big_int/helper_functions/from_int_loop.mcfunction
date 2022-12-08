# get next digit
scoreboard players operation digit aoc_calc = temp_num aoc_calc
execute store result storage aoc:library digit int 1 run scoreboard players operation digit aoc_calc %= 10 aoc_const

# add digit to array
data modify storage aoc:library big_int prepend from storage aoc:library digit

# loop for all digits
data remove storage aoc:library digit
scoreboard players operation temp_num aoc_calc /= 10 aoc_const
execute unless score temp_num aoc_calc matches 0 run function aoc_library:big_int/helper_functions/from_int_loop
