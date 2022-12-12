scoreboard players set answer aoc_answer 0
scoreboard objectives add aoc_step dummy

kill @e[type=marker,tag=aoc_traverse]
kill @e[type=marker,tag=aoc_build]
fill 0 0 0 94 7 40 air
fill 0 8 0 94 14 40 air
fill 0 15 0 94 21 40 air
fill 0 22 0 94 28 40 air
tp @a 46 64 20 180 90
gamemode spectator @a

summon marker 0 0 0 {Tags:["aoc_build"]}
schedule function aoc_2022:logic/day_12/visual_2/build/loop 10s
