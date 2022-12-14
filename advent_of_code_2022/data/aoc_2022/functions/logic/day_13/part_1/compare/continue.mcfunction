data remove storage aoc:calc packet1[0]
data remove storage aoc:calc packet2[0]

execute if data storage aoc:calc packet1[-1] unless data storage aoc:calc packet2[-1] run scoreboard players set correct aoc_calc 0
execute unless data storage aoc:calc packet1[-1] if data storage aoc:calc packet2[-1] run scoreboard players set correct aoc_calc 1

execute if score correct aoc_calc matches -1 unless data storage aoc:calc packet1[-1] unless data storage aoc:calc packet2[-1] run function aoc_2022:logic/day_13/part_1/compare/return
execute if score correct aoc_calc matches -1 if data storage aoc:calc packet1[-1] if data storage aoc:calc packet2[-1] run function aoc_2022:logic/day_13/part_1/compare
