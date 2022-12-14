function aoc_library:io/next_char
function aoc_library:io/char_to_int

scoreboard players set op aoc_calc -1
execute unless score num_invalid aoc_calc matches 1 run scoreboard players set op aoc_calc 0

execute unless score op aoc_calc matches 0.. if data storage aoc:calc {next_char:"["} run scoreboard players set op aoc_calc 1
execute unless score op aoc_calc matches 0.. if data storage aoc:calc {next_char:"]"} run scoreboard players set op aoc_calc 2

# 0: add to list
execute if score op aoc_calc matches 0 run function aoc_2022:logic/day_13/part_1/parse/add

# 1: new list (recursive call)
execute if score op aoc_calc matches 1 run function aoc_2022:logic/day_13/part_1/parse/recurse

# 2: return list (base case)
execute if score op aoc_calc matches 2 run function aoc_2022:logic/day_13/part_1/parse/return

scoreboard players add i_day13 aoc_calc 1
execute if score i_day13 aoc_calc matches ..10000 if score next_string_length aoc_calc matches 1.. run function aoc_2022:logic/day_13/part_1/parse
