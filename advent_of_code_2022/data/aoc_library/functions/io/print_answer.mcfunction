# prints the answer
# input:  score | answer, day, part
#         score | #type (bpr_aoc_answers), set to 1 for big_int
# output: none

function aoc_library:timer/end
tellraw @a ["",{"text":"AoC by BPR","color":"red"}]
execute unless score #type bpr_aoc_answers matches 1 run tellraw @a ["",{"text":"Day ","color":"dark_green"},{"score":{"name":"day","objective":"bpr_aoc_answers"},"color":"aqua"},{"text":" Part ","color":"dark_green"},{"score":{"name":"part","objective":"bpr_aoc_answers"},"color":"aqua"},{"text":": ","color":"aqua"},{"score":{"name":"answer","objective":"bpr_aoc_answers"},"color":"green"},{"text":" "},{"nbt":"time","storage":"bpr:aoc/library","interpret":true}]
execute if score #type bpr_aoc_answers matches 1 run function aoc_library:big_int/string
execute if score #type bpr_aoc_answers matches 1 run tellraw @a ["",{"text":"Day ","color":"dark_green"},{"score":{"name":"day","objective":"bpr_aoc_answers"},"color":"aqua"},{"text":" Part ","color":"dark_green"},{"score":{"name":"part","objective":"bpr_aoc_answers"},"color":"aqua"},{"text":": ","color":"aqua"},{"nbt":"big_int_string","storage":"bpr:aoc/library","interpret":true,"color":"green"},{"text":" "},{"nbt":"time","storage":"bpr:aoc/library","interpret":true}]
