forceload add -1 -1 239 239
forceload add 240 240 495 495
forceload add -1 240 239 495
forceload add 240 -1 495 239

tp @a 250 128 250 180 90
gamemode spectator @a

execute positioned 0 0 0 run function aoc_2022:logic/day_8/visual_input/build/loop
forceload remove all
