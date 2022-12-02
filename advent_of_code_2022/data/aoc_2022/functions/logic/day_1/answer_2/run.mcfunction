data modify storage bpr:aoc/library list set from storage bpr:aoc Input
function aoc_library:list/string/to_int
data modify storage bpr:aoc Input set from storage bpr:aoc/library list

scoreboard players set count_2 bpr_aoc 0
scoreboard players set max_2_1 bpr_aoc 0
scoreboard players set max_2_2 bpr_aoc 0
scoreboard players set max_2_3 bpr_aoc 0
scoreboard players set answer_2 bpr_aoc_answers -1
execute store result score i_2 bpr_aoc run data get storage bpr:aoc Input

function aoc_2022:logic/day_1/answer_2/loop

scoreboard players operation answer_2 bpr_aoc_answers = max_2_1 bpr_aoc
scoreboard players operation answer_2 bpr_aoc_answers += max_2_2 bpr_aoc
scoreboard players operation answer_2 bpr_aoc_answers += max_2_3 bpr_aoc

tellraw @a ["\n",{"text":"Day 1","underlined": true,"color":"light_purple"}]
tellraw @a [{"text":"Answer 2: ","color":"aqua"},{"score":{"name":"answer_2","objective":"bpr_aoc_answers"},"color":"green"}]
