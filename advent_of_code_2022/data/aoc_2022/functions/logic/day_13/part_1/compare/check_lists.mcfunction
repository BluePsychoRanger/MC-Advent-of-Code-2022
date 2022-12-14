# convert mixed to lists
execute unless score is_list1 aoc_calc = is_list2 aoc_calc run function aoc_2022:logic/day_13/part_1/compare/convert_mixed

# check empty lists
execute store success score is_empty1 aoc_calc if data storage aoc:calc {next1:[]}
execute store success score is_empty2 aoc_calc if data storage aoc:calc {next2:[]}

execute if score is_empty1 aoc_calc matches 1 if score is_empty2 aoc_calc matches 0 run scoreboard players set correct aoc_calc 1
execute if score is_empty1 aoc_calc matches 0 if score is_empty2 aoc_calc matches 1 run scoreboard players set correct aoc_calc 0

# (return if one of the lists are empty)

# compare lists (recursive call)
execute if score correct aoc_calc matches -1 if score is_empty1 aoc_calc matches 0 if score is_empty2 aoc_calc matches 0 run function aoc_2022:logic/day_13/part_1/compare/compare_lists
