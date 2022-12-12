function aoc_library:io/next_char
function aoc_library:io/char_to_ascii

execute if score num aoc_calc matches 83 run summon marker ~ 1 ~ {Tags:["aoc_traverse"]}
execute if score num aoc_calc matches 83 run scoreboard players set num aoc_calc 97
execute if score num aoc_calc matches 69 run setblock ~ 28 ~ gold_block
execute if score num aoc_calc matches 69 run scoreboard players set num aoc_calc 122
scoreboard players remove num aoc_calc 96

function aoc_2022:logic/day_12/part_1/build/loop_column

execute if score next_string_length aoc_calc matches 1.. positioned ~1 ~ ~ run function aoc_2022:logic/day_12/part_1/build/loop_string
