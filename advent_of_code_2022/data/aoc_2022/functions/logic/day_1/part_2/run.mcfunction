scoreboard players set count bpr_aoc 0
scoreboard players set max_1 bpr_aoc 0
scoreboard players set max_2 bpr_aoc 0
scoreboard players set max_3 bpr_aoc 0
scoreboard players set answer bpr_aoc_answers -1

function aoc_2022:logic/day_1/part_2/loop

scoreboard players operation answer bpr_aoc_answers = max_1 bpr_aoc
scoreboard players operation answer bpr_aoc_answers += max_2 bpr_aoc
scoreboard players operation answer bpr_aoc_answers += max_3 bpr_aoc
function aoc_library:io/print_answer
