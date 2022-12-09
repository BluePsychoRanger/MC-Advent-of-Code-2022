# up
execute if block ~2 ~ ~ red_concrete run tp @s ~1 ~ ~
# down
execute if block ~-2 ~ ~ red_concrete run tp @s ~-1 ~ ~
# right
execute if block ~ ~ ~2 red_concrete run tp @s ~ ~ ~1
# left
execute if block ~ ~ ~-2 red_concrete run tp @s ~ ~ ~-1

# top right up
execute if block ~2 ~ ~1 red_concrete run tp @s ~1 ~ ~1
# top right right
execute if block ~1 ~ ~2 red_concrete run tp @s ~1 ~ ~1

# top left up
execute if block ~2 ~ ~-1 red_concrete run tp @s ~1 ~ ~-1
# top left left
execute if block ~1 ~ ~-2 red_concrete run tp @s ~1 ~ ~-1

# bottom right down
execute if block ~-2 ~ ~1 red_concrete run tp @s ~-1 ~ ~1
# bottom right right
execute if block ~-1 ~ ~2 red_concrete run tp @s ~-1 ~ ~1

# bottom left down
execute if block ~-2 ~ ~-1 red_concrete run tp @s ~-1 ~ ~-1
# bottom left left
execute if block ~-1 ~ ~-2 red_concrete run tp @s ~-1 ~ ~-1

execute at @s run forceload add ~ ~
fill ~ ~ ~ ~ ~ ~ air replace orange_concrete
execute at @s run setblock ~ ~ ~ orange_concrete
execute at @s unless block ~ ~-1 ~ orange_stained_glass run scoreboard players add answer aoc_answer 1
execute at @s run setblock ~ ~-1 ~ orange_stained_glass
