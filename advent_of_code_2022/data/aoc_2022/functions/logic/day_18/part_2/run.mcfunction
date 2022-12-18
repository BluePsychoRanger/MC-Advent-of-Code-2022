scoreboard players set answer aoc_answer 0

forceload add ~ ~
kill @e[type=marker,tag=aoc_block]
kill @e[type=marker,tag=aoc_droplet]
summon marker ~ 0 ~ {Tags:["aoc_block"]}

fill -5 -5 -5 25 25 25 light_blue_stained_glass
fill -4 -4 -4 24 24 24 air

tp @a 10 30 10 180 90
gamemode spectator @a

data modify storage aoc:library delimeters set value [","]
execute as @e[type=marker,tag=aoc_block,limit=1] run function aoc_2022:logic/day_18/part_2/build

scoreboard players set i_day18 aoc_calc 0
summon marker 0 0 0 {Tags:["aoc_fill"]}
execute as @e[type=marker,tag=aoc_fill] at @s run function aoc_2022:logic/day_18/part_2/flood_fill

execute at @e[type=marker,tag=aoc_droplet] run function aoc_2022:logic/day_18/part_2/count

fill -5 -5 -5 25 25 25 light replace air
fill -5 -5 -5 25 25 25 lava replace orange_concrete

function aoc_library:io/print_answer
forceload remove all
