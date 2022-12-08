execute if score from aoc_calc matches 1 run function aoc_2022:logic/day_5/part_1/move_from/1
execute if score from aoc_calc matches 2 run function aoc_2022:logic/day_5/part_1/move_from/2
execute if score from aoc_calc matches 3 run function aoc_2022:logic/day_5/part_1/move_from/3
execute if score from aoc_calc matches 4 run function aoc_2022:logic/day_5/part_1/move_from/4
execute if score from aoc_calc matches 5 run function aoc_2022:logic/day_5/part_1/move_from/5
execute if score from aoc_calc matches 6 run function aoc_2022:logic/day_5/part_1/move_from/6
execute if score from aoc_calc matches 7 run function aoc_2022:logic/day_5/part_1/move_from/7
execute if score from aoc_calc matches 8 run function aoc_2022:logic/day_5/part_1/move_from/8
execute if score from aoc_calc matches 9 run function aoc_2022:logic/day_5/part_1/move_from/9

scoreboard players remove move_count aoc_calc 1
execute if score move_count aoc_calc matches 1.. run function aoc_2022:logic/day_5/part_1/move_boxes
