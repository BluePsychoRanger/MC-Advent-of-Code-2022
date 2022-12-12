function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result storage aoc:calc num int 1 run scoreboard players get num aoc_calc
data modify storage aoc:calc monkey.items append from storage aoc:calc num

execute if score next_string_length aoc_calc matches 1.. run function aoc_2022:logic/day_11/part_1/init_monkey_items
