
function aoc_library:io/next_char
data modify storage bpr:aoc buffer append from storage bpr:aoc next_char

scoreboard players remove init_buffer bpr_aoc 1
execute if score init_buffer bpr_aoc matches 1.. run function aoc_2022:logic/day_6/part_1/init_buffer
