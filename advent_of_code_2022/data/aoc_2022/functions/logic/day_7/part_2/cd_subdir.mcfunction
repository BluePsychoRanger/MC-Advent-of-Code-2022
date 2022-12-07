execute store result storage bpr:aoc current_count int 1 run scoreboard players get current_count bpr_aoc
data modify storage bpr:aoc stack_cnt append from storage bpr:aoc current_count
scoreboard players set current_count bpr_aoc 0
