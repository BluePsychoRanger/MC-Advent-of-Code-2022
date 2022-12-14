data modify storage aoc:calc next1 set from storage aoc:calc packet1[0]
data modify storage aoc:calc next2 set from storage aoc:calc packet2[0]

execute store success score is_list1 aoc_calc if data storage aoc:calc {next1:[]}
execute store success score is_list2 aoc_calc if data storage aoc:calc {next2:[]}

execute if score is_list1 aoc_calc matches 0 store success score is_list1 aoc_calc run data get storage aoc:calc next1[-1][-1]
execute if score is_list2 aoc_calc matches 0 store success score is_list2 aoc_calc run data get storage aoc:calc next2[-1][-1]

# compare numbers
scoreboard players set is_num aoc_calc 0
execute if score is_list1 aoc_calc matches 0 if score is_list2 aoc_calc matches 0 run function aoc_2022:logic/day_13/part_1/compare/compare_numbers

# compare lists
execute if score correct aoc_calc matches -1 if score is_num aoc_calc matches 0 run function aoc_2022:logic/day_13/part_1/compare/check_lists

# loop for all elements
execute if score correct aoc_calc matches -1 run function aoc_2022:logic/day_13/part_1/compare/continue
