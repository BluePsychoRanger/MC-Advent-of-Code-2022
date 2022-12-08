scoreboard players set visible aoc_calc 1

scoreboard players set vis aoc_calc 0
execute positioned ~1 ~ ~ run function aoc_2022:logic/day_8/part_2/check/scan/posx
scoreboard players operation visible aoc_calc *= vis aoc_calc

scoreboard players set vis aoc_calc 0
execute positioned ~-1 ~ ~ run function aoc_2022:logic/day_8/part_2/check/scan/negx
scoreboard players operation visible aoc_calc *= vis aoc_calc

scoreboard players set vis aoc_calc 0
execute positioned ~ ~ ~1 run function aoc_2022:logic/day_8/part_2/check/scan/posz
scoreboard players operation visible aoc_calc *= vis aoc_calc

scoreboard players set vis aoc_calc 0
execute positioned ~ ~ ~-1 run function aoc_2022:logic/day_8/part_2/check/scan/negz
scoreboard players operation visible aoc_calc *= vis aoc_calc

scoreboard players operation answer aoc_answer > visible aoc_calc
