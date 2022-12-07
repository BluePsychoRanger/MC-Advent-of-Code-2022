# get next digit
execute store result score digit bpr_aoc run data get storage bpr:aoc/library big_int[0]

# add digit to num
scoreboard players operation num bpr_aoc *= 10 bpr_aoc_const
scoreboard players operation num bpr_aoc += digit bpr_aoc

# loop for all digits
data remove storage bpr:aoc/library big_int[0]
scoreboard players remove i_big_int_to_int bpr_aoc 1
execute if score i_big_int_to_int bpr_aoc matches 1.. run function aoc_library:big_int/helper_functions/to_int_loop
