# check if current count is no more than 100000
execute if score current_count bpr_aoc matches ..100000 run scoreboard players operation answer bpr_aoc_answers += current_count bpr_aoc

# add to root count
execute store result score add bpr_aoc run data get storage bpr:aoc stack_cnt[-1]
scoreboard players operation current_count bpr_aoc += add bpr_aoc
# change dir
data remove storage bpr:aoc stack_cnt[-1]
