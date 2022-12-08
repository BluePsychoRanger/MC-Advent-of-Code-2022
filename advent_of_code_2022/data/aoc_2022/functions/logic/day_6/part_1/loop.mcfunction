

function aoc_library:io/next_char
data modify storage aoc:calc buffer append from storage aoc:calc next_char

data modify storage aoc:library string set from storage aoc:calc buffer
function aoc_library:string/find_duplicates

scoreboard players add answer aoc_answer 1
execute unless score duplicates aoc_calc matches 0 run data remove storage aoc:calc buffer[0]
execute if score next_string_length aoc_calc matches 1.. unless score duplicates aoc_calc matches 0 run function aoc_2022:logic/day_6/part_1/loop
