setblock ~ ~ ~ light_gray_concrete

scoreboard players remove num aoc_calc 1
execute if score num aoc_calc matches 1.. positioned ~ ~1 ~ run function aoc_2022:logic/day_12/part_1/build/loop_column
