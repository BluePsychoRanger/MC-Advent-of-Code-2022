function aoc_library:io/next_string

function aoc_library:io/next_char
function aoc_library:io/char_to_ascii
scoreboard players operation dir aoc_calc = num aoc_calc

function aoc_library:io/next_char
function aoc_library:io/string_to_int
scoreboard players operation step aoc_calc = num aoc_calc

function aoc_2022:logic/day_9/part_2/move_head
tp @a ~ 96 ~ 0 90

execute at @s run forceload add ~-17 ~-17 ~17 ~17
execute if score input_length aoc_calc matches 1.. at @s run function aoc_2022:logic/day_9/part_2/loop
