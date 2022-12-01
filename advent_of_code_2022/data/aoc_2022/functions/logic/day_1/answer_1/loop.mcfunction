execute store result score add bpr_aoc run data get storage bpr:aoc Input1[-1]

execute if score add bpr_aoc matches -1 run function aoc_2022:logic/day_1/answer_1/check_max
scoreboard players operation count bpr_aoc += add bpr_aoc

scoreboard players remove i bpr_aoc 1
data remove storage bpr:aoc Input1[-1]
execute if score i bpr_aoc matches 1.. run function aoc_2022:logic/day_1/answer_1/loop
