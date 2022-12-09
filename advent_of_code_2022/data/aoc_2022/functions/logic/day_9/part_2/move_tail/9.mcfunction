# up
execute if block ~2 ~ ~ purple_concrete run tp @s ~1 ~ ~
# down
execute if block ~-2 ~ ~ purple_concrete run tp @s ~-1 ~ ~
# right
execute if block ~ ~ ~2 purple_concrete run tp @s ~ ~ ~1
# left
execute if block ~ ~ ~-2 purple_concrete run tp @s ~ ~ ~-1

# top right
execute if block ~2 ~ ~1 purple_concrete run tp @s ~1 ~ ~1
execute if block ~1 ~ ~2 purple_concrete run tp @s ~1 ~ ~1
execute if block ~2 ~ ~2 purple_concrete run tp @s ~1 ~ ~1

# top left
execute if block ~2 ~ ~-1 purple_concrete run tp @s ~1 ~ ~-1
execute if block ~1 ~ ~-2 purple_concrete run tp @s ~1 ~ ~-1
execute if block ~2 ~ ~-2 purple_concrete run tp @s ~1 ~ ~-1

# bottom right
execute if block ~-2 ~ ~1 purple_concrete run tp @s ~-1 ~ ~1
execute if block ~-1 ~ ~2 purple_concrete run tp @s ~-1 ~ ~1
execute if block ~-2 ~ ~2 purple_concrete run tp @s ~-1 ~ ~1

# bottom left
execute if block ~-2 ~ ~-1 purple_concrete run tp @s ~-1 ~ ~-1
execute if block ~-1 ~ ~-2 purple_concrete run tp @s ~-1 ~ ~-1
execute if block ~-2 ~ ~-2 purple_concrete run tp @s ~-1 ~ ~-1

execute at @s run forceload add ~ ~
fill ~ ~ ~ ~ ~ ~ air replace magenta_concrete
execute at @s run setblock ~ ~ ~ magenta_concrete keep
execute at @s unless block ~ ~-1 ~ magenta_stained_glass run scoreboard players add answer aoc_answer 1
execute at @s run setblock ~ ~-1 ~ magenta_stained_glass
