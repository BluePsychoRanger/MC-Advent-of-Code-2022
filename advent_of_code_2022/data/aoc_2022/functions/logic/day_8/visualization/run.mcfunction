kill @e[type=marker,tag=aoc_scan]
summon marker 0 0 0 {Tags:[aoc_scan]}

fill -1 0 -1 99 2 99 light_blue_stained_glass
fill -1 3 -1 99 5 99 light_blue_stained_glass
fill -1 6 -1 99 8 99 light_blue_stained_glass
fill -1 9 -1 99 11 99 light_blue_stained_glass

scoreboard players set answer aoc_answer 0
fill 0 -3 0 98 -1 98 air
fill 0 0 0 98 2 98 air
fill 0 3 0 98 5 98 air
fill 0 6 0 98 8 98 air
fill 0 9 0 98 11 98 air
tp @a 50 64 50 180 90
gamemode spectator @a

data modify storage aoc:calc stored set from storage aoc:calc Input

execute positioned 0 0 0 run schedule function aoc_2022:logic/day_8/visualization/build/loop 30t
