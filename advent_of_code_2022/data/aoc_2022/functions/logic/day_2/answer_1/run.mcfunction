scoreboard players set answer_1 bpr_aoc_answers 0
execute store result score i_1 bpr_aoc run data get storage bpr:aoc Input

function aoc_2022:logic/day_2/answer_1/loop


tellraw @a ["\n",{"text":"Day 2","underlined": true,"color":"light_purple"}]
tellraw @a [{"text":"Answer 1: ","color":"aqua"},{"score":{"name":"answer_1","objective":"bpr_aoc_answers"},"color":"green"}]
