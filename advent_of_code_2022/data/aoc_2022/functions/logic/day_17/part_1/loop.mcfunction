# get spawn pos (bottom left corner)
scoreboard players operation rock_height aoc_calc = highest aoc_calc
scoreboard players add rock_height aoc_calc 3
scoreboard players set rock_pos aoc_calc 3

# check rock type
scoreboard players operation rock_type aoc_calc = rock aoc_calc
scoreboard players operation rock_type aoc_calc %= rock_types aoc_calc

scoreboard players set placed aoc_calc 0
execute if score rock_type aoc_calc matches 0 run function aoc_2022:logic/day_17/part_1/drop_rock/down/0
execute if score rock_type aoc_calc matches 1 run function aoc_2022:logic/day_17/part_1/drop_rock/down/1
execute if score rock_type aoc_calc matches 2 run function aoc_2022:logic/day_17/part_1/drop_rock/down/2
execute if score rock_type aoc_calc matches 3 run function aoc_2022:logic/day_17/part_1/drop_rock/down/3
execute if score rock_type aoc_calc matches 4 run function aoc_2022:logic/day_17/part_1/drop_rock/down/4

# loop for until last rock is placed
scoreboard players add rock aoc_calc 1
execute if score rock aoc_calc < last_rock aoc_calc run function aoc_2022:logic/day_17/part_1/loop
