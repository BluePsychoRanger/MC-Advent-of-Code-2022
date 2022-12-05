function aoc_library:io/next_string

scoreboard players set column bpr_aoc 1
function aoc_2022:logic/day_5/part_1/parse_init

scoreboard players add row bpr_aoc 1
execute if score row bpr_aoc matches ..8 run function aoc_2022:logic/day_5/part_1/parse_init_row
