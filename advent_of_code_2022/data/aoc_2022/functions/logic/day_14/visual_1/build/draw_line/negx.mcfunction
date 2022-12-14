# draw point
forceload add ~ ~
setblock ~ ~ ~ light_gray_concrete

scoreboard players remove x1 aoc_calc 1
execute if score x1 aoc_calc > x2 aoc_calc positioned ~-1 ~ ~ run function aoc_2022:logic/day_14/visual_1/build/draw_line/negx
