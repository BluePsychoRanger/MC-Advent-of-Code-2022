scoreboard players set answer aoc_answer 0
scoreboard players set last_rock aoc_calc 2022
scoreboard players set rock_types aoc_calc 5

scoreboard players set c1 aoc_calc 0
scoreboard players set c2 aoc_calc 0
scoreboard players set c3 aoc_calc 0
scoreboard players set c4 aoc_calc 0
scoreboard players set c5 aoc_calc 0
scoreboard players set c6 aoc_calc 0
scoreboard players set c7 aoc_calc 0
scoreboard players set highest aoc_calc 0

scoreboard players set rock aoc_calc 0

function aoc_library:io/next_string
data modify storage aoc:calc stored set from storage aoc:calc next_string
scoreboard players operation stored aoc_calc = next_string_length aoc_calc

function aoc_2022:logic/day_17/part_1/loop

function aoc_library:io/print_answer
