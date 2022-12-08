scoreboard players set done aoc_calc 0
scoreboard players set visible aoc_calc 0
execute positioned ~1 ~ ~ run function aoc_2022:logic/day_8/part_1/check/scan/posx
execute if score visible aoc_calc matches 0 positioned ~-1 ~ ~ run function aoc_2022:logic/day_8/part_1/check/scan/negx
execute if score visible aoc_calc matches 0 positioned ~ ~ ~1 run function aoc_2022:logic/day_8/part_1/check/scan/posz
execute if score visible aoc_calc matches 0 positioned ~ ~ ~-1 run function aoc_2022:logic/day_8/part_1/check/scan/negz
execute if score visible aoc_calc matches 1 run scoreboard players add answer aoc_answer 1
