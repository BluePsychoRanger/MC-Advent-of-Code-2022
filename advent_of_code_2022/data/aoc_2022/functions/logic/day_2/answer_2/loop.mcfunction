scoreboard players set add bpr_aoc 0
function aoc_2022:logic/day_2/answer_2/check_in
function aoc_2022:logic/day_2/answer_2/check_out
scoreboard players operation answer_2 bpr_aoc_answers += add bpr_aoc

scoreboard players remove i_2 bpr_aoc 1
data remove storage bpr:aoc Input[-1]
execute if score i_2 bpr_aoc matches 1.. run function aoc_2022:logic/day_2/answer_2/loop
