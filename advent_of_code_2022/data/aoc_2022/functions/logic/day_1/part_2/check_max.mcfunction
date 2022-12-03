scoreboard players operation max_3 bpr_aoc > count bpr_aoc
execute if score max_3 bpr_aoc > max_2 bpr_aoc run scoreboard players operation max_3 bpr_aoc >< max_2 bpr_aoc
execute if score max_2 bpr_aoc > max_1 bpr_aoc run scoreboard players operation max_2 bpr_aoc >< max_1 bpr_aoc

scoreboard players set num bpr_aoc 0
scoreboard players set count bpr_aoc 0
