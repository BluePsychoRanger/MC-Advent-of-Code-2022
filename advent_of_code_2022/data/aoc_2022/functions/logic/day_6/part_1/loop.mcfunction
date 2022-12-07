

function aoc_library:io/next_char
data modify storage bpr:aoc buffer append from storage bpr:aoc next_char

data modify storage bpr:aoc/library string set from storage bpr:aoc buffer
function aoc_library:string/find_duplicates

scoreboard players add answer bpr_aoc_answers 1
execute unless score duplicates bpr_aoc matches 0 run data remove storage bpr:aoc buffer[0]
execute if score next_string_length bpr_aoc matches 1.. unless score duplicates bpr_aoc matches 0 run function aoc_2022:logic/day_6/part_1/loop
