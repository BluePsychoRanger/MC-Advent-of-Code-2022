# get next digit
scoreboard players operation digit bpr_aoc = temp_num bpr_aoc
execute store result storage bpr:aoc/library digit int 1 run scoreboard players operation digit bpr_aoc %= 10 bpr_aoc_const

# add digit to array
data modify storage bpr:aoc/library big_int prepend from storage bpr:aoc/library digit

# loop for all digits
data remove storage bpr:aoc/library digit
scoreboard players operation temp_num bpr_aoc /= 10 bpr_aoc_const
execute unless score temp_num bpr_aoc matches 0 run function aoc_library:big_int/helper_functions/from_int_loop
