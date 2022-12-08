
function aoc_library:io/next_char
data modify storage aoc:calc buffer append from storage aoc:calc next_char

scoreboard players remove init_buffer aoc_calc 1
execute if score init_buffer aoc_calc matches 1.. run function aoc_2022:logic/day_6/part_1/init_buffer
