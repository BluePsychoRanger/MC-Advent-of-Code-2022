# up
execute if score dir aoc_calc matches 85 run tp @s ~1 ~ ~
# down
execute if score dir aoc_calc matches 68 run tp @s ~-1 ~ ~
# left
execute if score dir aoc_calc matches 76 run tp @s ~ ~ ~-1
# right
execute if score dir aoc_calc matches 82 run tp @s ~ ~ ~1

execute at @s run forceload add ~ ~
setblock ~ ~ ~ air
execute at @s run setblock ~ ~ ~ red_concrete
execute as @e[type=marker,tag=aoc_tail_1] at @s run function aoc_2022:logic/day_9/part_2/move_tail/1

scoreboard players remove step aoc_calc 1
execute if score step aoc_calc matches 1.. at @s run function aoc_2022:logic/day_9/part_2/move_head
