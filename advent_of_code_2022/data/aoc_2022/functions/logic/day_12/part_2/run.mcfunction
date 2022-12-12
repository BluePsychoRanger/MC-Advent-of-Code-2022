scoreboard players set answer aoc_answer 0
scoreboard objectives add aoc_step dummy

kill @e[type=marker,tag=aoc_traverse]
fill 0 0 0 94 7 40 air
fill 0 8 0 94 14 40 air
fill 0 15 0 94 21 40 air
fill 0 22 0 94 28 40 air
tp @a 46 64 20 180 90
gamemode spectator @a

execute positioned 0 0 0 run function aoc_2022:logic/day_12/part_2/build/loop

scoreboard players set i_day12 aoc_calc 0
scoreboard players set found aoc_calc 0
scoreboard players set @e[type=marker,tag=aoc_traverse] aoc_step 0
function aoc_2022:logic/day_12/part_2/check/loop

function aoc_library:io/print_answer
