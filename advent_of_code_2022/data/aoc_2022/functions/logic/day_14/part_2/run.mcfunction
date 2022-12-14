scoreboard players set answer aoc_answer 0
scoreboard players set max_z aoc_calc 0

forceload add ~ ~
kill @e[type=marker,tag=aoc_line]
summon marker ~ 128 ~ {Tags:["aoc_line"]}

tp @a 480 256 85 180 90
gamemode spectator @a

data modify storage aoc:library delimeters set value [" ",",","-",">"]
execute as @e[type=marker,tag=aoc_line,limit=1] at @s run function aoc_2022:logic/day_14/part_2/build/loop

execute positioned 500 128 0 run function aoc_2022:logic/day_14/part_2/sand/loop

function aoc_library:io/print_answer
forceload remove all
