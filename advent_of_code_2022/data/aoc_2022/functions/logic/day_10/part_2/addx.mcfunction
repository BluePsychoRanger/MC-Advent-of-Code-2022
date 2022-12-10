execute at @s run function aoc_2022:logic/day_10/part_2/draw_pixel

scoreboard players add cycle aoc_calc 1
execute if score cycle aoc_calc = next_pulse aoc_calc run scoreboard players operation next_pulse aoc_calc += pulse aoc_calc

scoreboard players operation x aoc_calc += num aoc_calc
scoreboard players operation x1 aoc_calc += num aoc_calc
scoreboard players operation x2 aoc_calc += num aoc_calc
