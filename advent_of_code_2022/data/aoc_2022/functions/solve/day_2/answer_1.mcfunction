scoreboard objectives add bpr_aoc dummy
scoreboard objectives add bpr_aoc_answers dummy

scoreboard players reset * bpr_aoc
scoreboard players reset * bpr_aoc_answers
scoreboard players set day bpr_aoc_answers 2

function aoc_2022:get_input/day_2
function aoc_2022:logic/day_2/answer_1/run
