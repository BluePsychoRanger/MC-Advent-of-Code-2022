function aoc_2022:logic/day_7/part_1/cd_root
scoreboard players remove stack_count bpr_aoc 1
execute if score stack_count bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_1/flush_stack
