# check if either list is empty
execute if score correct aoc_calc matches -1 unless data storage aoc:calc packet2[-1] if data storage aoc:calc packet1[-1] run scoreboard players set correct aoc_calc 0
execute if score correct aoc_calc matches -1 unless data storage aoc:calc packet1[-1] if data storage aoc:calc packet2[-1] run scoreboard players set correct aoc_calc 1

# (return if either list is empty)

# else check the next element
execute if score correct aoc_calc matches -1 run function aoc_2022:logic/day_13/part_1/compare/check_type

# (return if comparison was completed)

# loop for all elements
# execute if score correct aoc_calc matches -1 run function aoc_2022:logic/day_13/part_1/compare/continue
