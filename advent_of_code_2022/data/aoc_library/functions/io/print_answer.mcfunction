function aoc_library:timer/end
tellraw @a ["",{"text":"AoC by BPR","color":"red"}]
tellraw @a ["",{"text":"Day ","color":"dark_green"},{"score":{"name":"day","objective":"bpr_aoc_answers"},"color":"aqua"},{"text":" Part ","color":"dark_green"},{"score":{"name":"part","objective":"bpr_aoc_answers"},"color":"aqua"},{"text":": ","color":"aqua"},{"score":{"name":"answer","objective":"bpr_aoc_answers"},"color":"green"},{"text":" "},{"nbt":"time","storage":"bpr:aoc/library","interpret":true}]
