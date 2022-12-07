# check if current count is greater than or equal to the minimum
execute if score current_count bpr_aoc >= min bpr_aoc store result storage bpr:aoc num int 1 run scoreboard players operation num bpr_aoc = current_count bpr_aoc
execute if score current_count bpr_aoc >= min bpr_aoc run data modify storage bpr:aoc list_check append from storage bpr:aoc num
execute if score current_count bpr_aoc >= min bpr_aoc run data modify storage bpr:aoc/library list set from storage bpr:aoc options
execute if score current_count bpr_aoc >= min bpr_aoc run function aoc_library:list/insert_sorted
execute if score current_count bpr_aoc >= min bpr_aoc run data modify storage bpr:aoc options set from storage bpr:aoc/library list

# add to root count
execute store result score add bpr_aoc run data get storage bpr:aoc stack_cnt[-1]
scoreboard players operation current_count bpr_aoc += add bpr_aoc
# change dir
data remove storage bpr:aoc stack_cnt[-1]
