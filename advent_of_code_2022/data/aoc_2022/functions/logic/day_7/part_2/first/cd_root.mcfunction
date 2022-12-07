# add to total
scoreboard players operation total bpr_aoc += current_count bpr_aoc

# add to root count
execute store result score add bpr_aoc run data get storage bpr:aoc stack_cnt[-1]
scoreboard players operation current_count bpr_aoc += add bpr_aoc
# change dir
data remove storage bpr:aoc stack_cnt[-1]
