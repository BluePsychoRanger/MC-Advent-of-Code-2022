function aoc_library:io/next_string

execute at @e[type=marker,tag=aoc_scan,limit=1] run function aoc_2022:logic/day_8/visualization/build/loop_string

execute as @e[type=marker,tag=aoc_scan,limit=1] at @s run tp ~ ~ ~1
execute if score input_length aoc_calc matches 1.. run schedule function aoc_2022:logic/day_8/visualization/build/loop 15t
execute unless score input_length aoc_calc matches 1.. run schedule function aoc_2022:logic/day_8/visualization/run_2 30t
