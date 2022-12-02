scoreboard objectives add bpr_aoc dummy
scoreboard objectives add bpr_aoc_answers dummy

scoreboard players reset * bpr_aoc
scoreboard players reset * bpr_aoc_answers
scoreboard players set day bpr_aoc_answers 1

function aoc_2022:get_input/day_1
function aoc_2022:logic/day_1/answer_1/run
