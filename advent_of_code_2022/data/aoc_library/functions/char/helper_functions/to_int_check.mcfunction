execute store success score not_eq bpr_aoc run data modify storage bpr:aoc/library numbers[-1] set from storage bpr:aoc/library char

scoreboard players remove num bpr_aoc 1
data remove storage bpr:aoc/library numbers[-1]
execute if score num bpr_aoc matches 0.. if score not_eq bpr_aoc matches 1 run function aoc_library:char/helper_functions/to_int_check
