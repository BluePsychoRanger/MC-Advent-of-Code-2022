function aoc_library:io/next_string

execute at @e[type=marker,tag=aoc_build] run function aoc_2022:logic/day_12/visual_2/build/loop_string

execute as @e[type=marker,tag=aoc_build] at @s run tp ~ ~ ~1
execute if score input_length aoc_calc matches 1.. run schedule function aoc_2022:logic/day_12/visual_2/build/loop 30t
execute unless score input_length aoc_calc matches 1.. run schedule function aoc_2022:logic/day_12/visual_2/run_2 1t
