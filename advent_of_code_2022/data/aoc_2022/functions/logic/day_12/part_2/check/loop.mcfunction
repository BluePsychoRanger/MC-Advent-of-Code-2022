execute as @e[type=marker,tag=aoc_traverse] at @s run function aoc_2022:logic/day_12/part_2/check/next_step

scoreboard players add i_day12 aoc_calc 1
execute if score i_day12 aoc_calc matches ..5000 unless score found aoc_calc matches 1 run function aoc_2022:logic/day_12/part_2/check/loop
