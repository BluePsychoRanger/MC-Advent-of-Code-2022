function aoc_library:io/next_string

scoreboard players set column aoc_calc 1
function aoc_2022:logic/day_5/part_2/parse_init

scoreboard players add row aoc_calc 1
execute if score row aoc_calc matches ..8 run function aoc_2022:logic/day_5/part_2/parse_init_row
