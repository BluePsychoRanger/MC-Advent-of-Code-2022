# draw point
forceload add ~ ~
setblock ~ ~ ~ light_gray_concrete

scoreboard players add z1 aoc_calc 1
execute if score z1 aoc_calc < z2 aoc_calc positioned ~ ~ ~1 run function aoc_2022:logic/day_14/part_1/build/draw_line/posz
