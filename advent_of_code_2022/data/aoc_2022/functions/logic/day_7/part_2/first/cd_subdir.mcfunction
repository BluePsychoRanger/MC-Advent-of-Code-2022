execute store result storage aoc:calc current_count int 1 run scoreboard players get current_count aoc_calc
data modify storage aoc:calc stack_cnt append from storage aoc:calc current_count
scoreboard players set current_count aoc_calc 0
data remove storage aoc:calc current_count
