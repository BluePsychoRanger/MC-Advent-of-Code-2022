scoreboard players set count bpr_aoc 0
scoreboard players set max bpr_aoc 0
scoreboard players set answer_1 bpr_aoc_answers -1
execute store result score i bpr_aoc run data get storage bpr:aoc Input1

function aoc_2022:logic/day_1/answer_1/loop

tellraw @a ["\n",{"text":"Day 1","underlined": true,"color":"light_purple"}]
tellraw @a [{"text":"Answer 1: ","color":"aqua"},{"score":{"name":"answer_1","objective":"bpr_aoc_answers"},"color":"green"}]
