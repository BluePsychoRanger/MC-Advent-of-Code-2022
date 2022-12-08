scoreboard players set visible aoc_calc 1

scoreboard players set vis aoc_calc 0
execute positioned ~1 ~ ~ run function aoc_2022:logic/day_8/visual_2/check/scan/posx
scoreboard players operation visible aoc_calc *= vis aoc_calc

scoreboard players set vis aoc_calc 0
execute positioned ~-1 ~ ~ run function aoc_2022:logic/day_8/visual_2/check/scan/negx
scoreboard players operation visible aoc_calc *= vis aoc_calc

scoreboard players set vis aoc_calc 0
execute positioned ~ ~ ~1 run function aoc_2022:logic/day_8/visual_2/check/scan/posz
scoreboard players operation visible aoc_calc *= vis aoc_calc

scoreboard players set vis aoc_calc 0
execute positioned ~ ~ ~-1 run function aoc_2022:logic/day_8/visual_2/check/scan/negz
scoreboard players operation visible aoc_calc *= vis aoc_calc

execute if score visible aoc_calc > local_max aoc_calc run clone 0 12 0 98 12 98 0 11 0 replace
execute if score visible aoc_calc > answer aoc_answer run clone 0 11 0 98 11 98 0 10 0 replace move
fill 0 10 0 98 10 98 lime_stained_glass replace yellow_stained_glass
fill 0 12 0 98 12 98 air

scoreboard players operation local_max aoc_calc > visible aoc_calc
scoreboard players operation answer aoc_answer > visible aoc_calc
