scoreboard players set count aoc_calc 0
scoreboard players set max_1 aoc_calc 0
scoreboard players set max_2 aoc_calc 0
scoreboard players set max_3 aoc_calc 0
scoreboard players set answer aoc_answer -1

function aoc_2022:logic/day_1/part_2/loop

scoreboard players operation answer aoc_answer = max_1 aoc_calc
scoreboard players operation answer aoc_answer += max_2 aoc_calc
scoreboard players operation answer aoc_answer += max_3 aoc_calc
function aoc_library:io/print_answer
