function aoc_library:io/next_char
function aoc_library:io/char_to_int

execute if score num aoc_calc matches 0 run place jigsaw aoc_2022:day_8/0 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 1 run place jigsaw aoc_2022:day_8/1 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 2 run place jigsaw aoc_2022:day_8/2 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 3 run place jigsaw aoc_2022:day_8/3 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 4 run place jigsaw aoc_2022:day_8/4 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 5 run place jigsaw aoc_2022:day_8/5 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 6 run place jigsaw aoc_2022:day_8/6 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 7 run place jigsaw aoc_2022:day_8/7 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 8 run place jigsaw aoc_2022:day_8/8 aoc:tile 1 ~ ~ ~
execute if score num aoc_calc matches 9 run place jigsaw aoc_2022:day_8/9 aoc:tile 1 ~ ~ ~

execute if score next_string_length aoc_calc matches 1.. positioned ~5 ~ ~ run function aoc_2022:logic/day_8/visual_input/build/loop_string
