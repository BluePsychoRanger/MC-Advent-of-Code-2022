execute store result score add_2 bpr_aoc run data get storage bpr:aoc Input2[-1]

execute if score add_2 bpr_aoc matches -1 run function aoc_2022:logic/day_1/answer_2/check_max
scoreboard players operation count_2 bpr_aoc += add_2 bpr_aoc

scoreboard players remove i_2 bpr_aoc 1
data remove storage bpr:aoc Input2[-1]
execute if score i_2 bpr_aoc matches 1.. run function aoc_2022:logic/day_1/answer_2/loop
