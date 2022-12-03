function aoc_library:io/next_string
function aoc_library:io/string_to_int

execute if score num_invalid bpr_aoc matches 1 run function aoc_2022:logic/day_1/part_1/check_max
scoreboard players operation count bpr_aoc += num bpr_aoc

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_1/part_1/loop
