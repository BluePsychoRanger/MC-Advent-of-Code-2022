scoreboard players operation max_3 aoc_calc > count aoc_calc
execute if score max_3 aoc_calc > max_2 aoc_calc run scoreboard players operation max_3 aoc_calc >< max_2 aoc_calc
execute if score max_2 aoc_calc > max_1 aoc_calc run scoreboard players operation max_2 aoc_calc >< max_1 aoc_calc

scoreboard players set num aoc_calc 0
scoreboard players set count aoc_calc 0
