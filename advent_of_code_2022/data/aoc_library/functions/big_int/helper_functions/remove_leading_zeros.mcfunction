execute store result score digit bpr_aoc run data get storage bpr:aoc/library big_int[0]

execute if score digit bpr_aoc matches 0 run data remove storage bpr:aoc/library big_int[0]

scoreboard players remove big_int_length bpr_aoc 1
execute if score big_int_length bpr_aoc matches 2.. if score digit bpr_aoc matches 0 run function aoc_library:big_int/helper_functions/remove_leading_zeros
