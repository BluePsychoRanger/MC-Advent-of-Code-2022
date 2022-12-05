execute if score from bpr_aoc matches 1 run function aoc_2022:logic/day_5/part_2/move_from/1
execute if score from bpr_aoc matches 2 run function aoc_2022:logic/day_5/part_2/move_from/2
execute if score from bpr_aoc matches 3 run function aoc_2022:logic/day_5/part_2/move_from/3
execute if score from bpr_aoc matches 4 run function aoc_2022:logic/day_5/part_2/move_from/4
execute if score from bpr_aoc matches 5 run function aoc_2022:logic/day_5/part_2/move_from/5
execute if score from bpr_aoc matches 6 run function aoc_2022:logic/day_5/part_2/move_from/6
execute if score from bpr_aoc matches 7 run function aoc_2022:logic/day_5/part_2/move_from/7
execute if score from bpr_aoc matches 8 run function aoc_2022:logic/day_5/part_2/move_from/8
execute if score from bpr_aoc matches 9 run function aoc_2022:logic/day_5/part_2/move_from/9

scoreboard players remove move_count bpr_aoc 1
execute if score move_count bpr_aoc matches 1.. run function aoc_2022:logic/day_5/part_2/move_boxes
