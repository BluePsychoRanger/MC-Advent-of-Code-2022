scoreboard players set answer aoc_answer 0
scoreboard players set max_z aoc_calc 0

forceload add ~ ~
kill @e[type=marker,tag=aoc_line]
summon marker ~ -32 ~ {Tags:["aoc_line"]}

tp @a 504 64 88 180 90
gamemode spectator @a

data modify storage aoc:library delimeters set value [" ",",","-",">"]
execute as @e[type=marker,tag=aoc_line,limit=1] at @s run function aoc_2022:logic/day_14/visual_1/build/loop

schedule function aoc_2022:logic/day_14/visual_1/sand/loop 7s
