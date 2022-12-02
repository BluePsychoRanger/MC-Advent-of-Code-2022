execute store result score add_1 bpr_aoc run data get storage bpr:aoc Input[-1]

execute if score add_1 bpr_aoc matches -1 run function aoc_2022:logic/day_1/answer_1/check_max
scoreboard players operation count_1 bpr_aoc += add_1 bpr_aoc

scoreboard players remove i_1 bpr_aoc 1
data remove storage bpr:aoc Input[-1]
execute if score i_1 bpr_aoc matches 1.. run function aoc_2022:logic/day_1/answer_1/loop
