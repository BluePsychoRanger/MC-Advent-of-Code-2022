function aoc_library:io/next_string

scoreboard players set add aoc_calc 0
function aoc_2022:logic/day_2/part_1/check_in
function aoc_2022:logic/day_2/part_1/check_out
scoreboard players operation answer aoc_answer += add aoc_calc

execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_2/part_1/loop
