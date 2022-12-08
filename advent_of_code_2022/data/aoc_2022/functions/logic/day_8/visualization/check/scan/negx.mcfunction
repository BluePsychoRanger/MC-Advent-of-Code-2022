execute unless block ~ ~ ~ light_blue_stained_glass run scoreboard players add vis aoc_calc 1
execute if block ~ ~ ~ air run setblock ~ 12 ~ yellow_stained_glass replace
execute if block ~ ~ ~ air positioned ~-1 ~ ~ run function aoc_2022:logic/day_8/visualization/check/scan/negx
