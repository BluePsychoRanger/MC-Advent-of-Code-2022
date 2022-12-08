# check if current count is no more than 100000
execute if score current_count aoc_calc matches ..100000 run scoreboard players operation answer aoc_answer += current_count aoc_calc

# add to root count
execute store result score add aoc_calc run data get storage aoc:calc stack_cnt[-1]
scoreboard players operation current_count aoc_calc += add aoc_calc
# change dir
data remove storage aoc:calc stack_cnt[-1]
