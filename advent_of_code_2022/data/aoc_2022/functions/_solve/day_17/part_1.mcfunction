scoreboard players reset * aoc_calc
scoreboard players reset * aoc_answer
scoreboard players set day aoc_answer 17
scoreboard players set part aoc_answer 1

data merge storage aoc:calc {Input:[['>','>','>','<','<','>','<','>','>','<','<','<','>','>','<','>','>','>','<','<','<','>','>','>','<','<','<','>','<','<','<','>','>','<','>','>','<','<','>','>']]}
execute store result score input_length aoc_calc run data get storage aoc:calc Input

function aoc_library:timer/start
function aoc_2022:logic/day_17/part_1/run
