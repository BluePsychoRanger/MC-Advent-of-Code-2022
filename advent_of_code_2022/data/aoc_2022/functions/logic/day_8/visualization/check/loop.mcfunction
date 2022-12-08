function aoc_library:io/next_string

scoreboard players set local_max aoc_calc 0
execute at @e[type=marker,tag=aoc_scan,limit=1] run function aoc_2022:logic/day_8/visualization/check/loop_string

execute as @e[type=marker,tag=aoc_scan,limit=1] at @s run tp ~ ~ ~1
execute if score input_length aoc_calc matches 1.. run schedule function aoc_2022:logic/day_8/visualization/check/loop 5t
execute unless score input_length aoc_calc matches 1.. run fill 0 12 0 98 11 98 air
execute unless score input_length aoc_calc matches 1.. run schedule function aoc_library:io/print_answer 1t
