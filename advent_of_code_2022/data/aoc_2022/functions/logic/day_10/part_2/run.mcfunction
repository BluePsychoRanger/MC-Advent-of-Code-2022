kill @e[type=marker,tag=aoc_screen]
summon marker 0 -32 0 {Tags:["aoc_screen"]}

scoreboard players set answer aoc_answer 0

scoreboard players set pos aoc_calc 0
scoreboard players set x aoc_calc 1
scoreboard players set x1 aoc_calc 0
scoreboard players set x2 aoc_calc 2
scoreboard players set pulse aoc_calc 40
scoreboard players set next_pulse aoc_calc 20
scoreboard players set cycle aoc_calc 0
scoreboard players set last aoc_calc 260

tp @a 20 -16 3 180 90

execute as @e[type=marker,tag=aoc_screen,limit=1] at @s run function aoc_2022:logic/day_10/part_2/loop
function aoc_library:io/print_answer
