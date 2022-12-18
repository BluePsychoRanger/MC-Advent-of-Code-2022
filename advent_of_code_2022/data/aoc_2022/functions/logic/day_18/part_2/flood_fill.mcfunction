execute as @e[type=marker,tag=aoc_fill] at @s run function aoc_2022:logic/day_18/part_2/fill

scoreboard players add i_day18 aoc_calc 1
execute if score i_day18 aoc_calc matches ..2000 if entity @e[type=marker,tag=aoc_fill,limit=1] run function aoc_2022:logic/day_18/part_2/flood_fill
