scoreboard players set answer aoc_answer 0
fill -1 0 -1 99 2 99 light_blue_stained_glass
fill -1 3 -1 99 5 99 light_blue_stained_glass
fill -1 6 -1 99 8 99 light_blue_stained_glass
fill -1 9 -1 99 11 99 light_blue_stained_glass

fill 0 0 0 98 2 98 air
fill 0 3 0 98 5 98 air
fill 0 6 0 98 8 98 air
fill 0 9 0 98 11 98 air
tp @a 50 64 50 90 90
gamemode spectator @a

data modify storage aoc:calc stored set from storage aoc:calc Input

execute positioned 0 0 0 run function aoc_2022:logic/day_8/part_2/build/loop

data modify storage aoc:calc Input set from storage aoc:calc stored
execute store result score input_length aoc_calc run data get storage aoc:calc Input
execute positioned 0 0 0 run function aoc_2022:logic/day_8/part_2/check/loop
function aoc_library:io/print_answer
