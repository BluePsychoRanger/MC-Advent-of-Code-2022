function aoc_library:io/next_string

scoreboard players set add bpr_aoc 0
function aoc_2022:logic/day_2/part_2/check_in
function aoc_2022:logic/day_2/part_2/check_out
scoreboard players operation answer bpr_aoc_answers += add bpr_aoc

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_2/part_2/loop
