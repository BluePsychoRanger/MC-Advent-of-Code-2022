# add to total
scoreboard players operation total aoc_calc += current_count aoc_calc

# add to root count
execute store result score add aoc_calc run data get storage aoc:calc stack_cnt[-1]
scoreboard players operation current_count aoc_calc += add aoc_calc
# change dir
data remove storage aoc:calc stack_cnt[-1]
