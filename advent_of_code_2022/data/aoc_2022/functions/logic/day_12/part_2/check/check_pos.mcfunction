execute if block ~ ~-1 ~ light_gray_concrete as @e[type=marker,tag=aoc_traverse,distance=..0.5] if score @s aoc_step > current aoc_step run kill @s
execute if block ~ ~-1 ~ light_gray_concrete unless entity @e[type=marker,tag=aoc_traverse,distance=..0.5] run summon marker ~ ~ ~ {Tags:["aoc_traverse","aoc_new_traverse"]}

scoreboard players operation @e[type=marker,tag=aoc_new_traverse,distance=..0.5,limit=1] aoc_step = current aoc_step
tag @e[type=marker,distance=..0.5] remove aoc_new_traverse
