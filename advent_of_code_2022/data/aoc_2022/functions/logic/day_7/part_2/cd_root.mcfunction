# check if current count is greater than or equal to the minimum
execute if score current_count aoc_calc >= min aoc_calc store result storage aoc:calc num int 1 run scoreboard players operation num aoc_calc = current_count aoc_calc
execute if score current_count aoc_calc >= min aoc_calc run data modify storage aoc:calc list_check append from storage aoc:calc num
execute if score current_count aoc_calc >= min aoc_calc run data modify storage aoc:library list set from storage aoc:calc options
execute if score current_count aoc_calc >= min aoc_calc run function aoc_library:list/insert_sorted
execute if score current_count aoc_calc >= min aoc_calc run data modify storage aoc:calc options set from storage aoc:library list

# add to root count
execute store result score add aoc_calc run data get storage aoc:calc stack_cnt[-1]
scoreboard players operation current_count aoc_calc += add aoc_calc
# change dir
data remove storage aoc:calc stack_cnt[-1]
