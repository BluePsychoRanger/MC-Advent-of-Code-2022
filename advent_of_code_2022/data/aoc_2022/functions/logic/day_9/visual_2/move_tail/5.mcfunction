# up
execute if block ~2 ~ ~ green_concrete run tp @s ~1 ~ ~
# down
execute if block ~-2 ~ ~ green_concrete run tp @s ~-1 ~ ~
# right
execute if block ~ ~ ~2 green_concrete run tp @s ~ ~ ~1
# left
execute if block ~ ~ ~-2 green_concrete run tp @s ~ ~ ~-1

# top right
execute if block ~2 ~ ~1 green_concrete run tp @s ~1 ~ ~1
execute if block ~1 ~ ~2 green_concrete run tp @s ~1 ~ ~1
execute if block ~2 ~ ~2 green_concrete run tp @s ~1 ~ ~1

# top left
execute if block ~2 ~ ~-1 green_concrete run tp @s ~1 ~ ~-1
execute if block ~1 ~ ~-2 green_concrete run tp @s ~1 ~ ~-1
execute if block ~2 ~ ~-2 green_concrete run tp @s ~1 ~ ~-1

# bottom right
execute if block ~-2 ~ ~1 green_concrete run tp @s ~-1 ~ ~1
execute if block ~-1 ~ ~2 green_concrete run tp @s ~-1 ~ ~1
execute if block ~-2 ~ ~2 green_concrete run tp @s ~-1 ~ ~1

# bottom left
execute if block ~-2 ~ ~-1 green_concrete run tp @s ~-1 ~ ~-1
execute if block ~-1 ~ ~-2 green_concrete run tp @s ~-1 ~ ~-1
execute if block ~-2 ~ ~-2 green_concrete run tp @s ~-1 ~ ~-1

execute at @s run forceload add ~ ~
fill ~ ~ ~ ~ ~ ~ air replace cyan_concrete
execute at @s run fill ~ ~ ~ ~ ~ ~ cyan_concrete replace #aoc_2022:day_9/override_5
execute as @e[type=marker,tag=aoc_tail_6] at @s run function aoc_2022:logic/day_9/visual_2/move_tail/6
