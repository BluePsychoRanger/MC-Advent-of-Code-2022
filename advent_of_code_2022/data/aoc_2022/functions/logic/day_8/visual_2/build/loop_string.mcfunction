function aoc_library:io/next_char
function aoc_library:io/char_to_int

execute if score num aoc_calc matches 0 run fill ~ ~ ~ ~ ~0 ~ green_concrete
execute if score num aoc_calc matches 1 run fill ~ ~ ~ ~ ~1 ~ green_concrete
execute if score num aoc_calc matches 2 run fill ~ ~ ~ ~ ~2 ~ green_concrete
execute if score num aoc_calc matches 3 run fill ~ ~ ~ ~ ~3 ~ green_concrete
execute if score num aoc_calc matches 4 run fill ~ ~ ~ ~ ~4 ~ green_concrete
execute if score num aoc_calc matches 5 run fill ~ ~ ~ ~ ~5 ~ green_concrete
execute if score num aoc_calc matches 6 run fill ~ ~ ~ ~ ~6 ~ green_concrete
execute if score num aoc_calc matches 7 run fill ~ ~ ~ ~ ~7 ~ green_concrete
execute if score num aoc_calc matches 8 run fill ~ ~ ~ ~ ~8 ~ green_concrete
execute if score num aoc_calc matches 9 run fill ~ ~ ~ ~ ~9 ~ green_concrete

execute if score next_string_length aoc_calc matches 1.. positioned ~1 ~ ~ run function aoc_2022:logic/day_8/visual_2/build/loop_string
