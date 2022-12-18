scoreboard players set answer aoc_answer 0

forceload add ~ ~
kill @e[type=marker,tag=aoc_block]
kill @e[type=marker,tag=aoc_droplet]
summon marker ~ 128 ~ {Tags:["aoc_block"]}

fill -5 -5 -5 20 20 20 air

tp @a 10 30 10 180 90
gamemode spectator @a

data modify storage aoc:library delimeters set value [","]
execute as @e[type=marker,tag=aoc_block,limit=1] run function aoc_2022:logic/day_18/part_1/build

execute at @e[type=marker,tag=aoc_droplet] run function aoc_2022:logic/day_18/part_1/count

function aoc_library:io/print_answer
forceload remove all
