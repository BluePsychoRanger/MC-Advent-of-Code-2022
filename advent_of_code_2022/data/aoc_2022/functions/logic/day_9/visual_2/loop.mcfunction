function aoc_library:io/next_string

function aoc_library:io/next_char
function aoc_library:io/char_to_ascii
scoreboard players operation dir aoc_calc = num aoc_calc

function aoc_library:io/next_char
function aoc_library:io/string_to_int
scoreboard players operation step aoc_calc = num aoc_calc

execute as @e[type=marker,tag=aoc_head] at @s run function aoc_2022:logic/day_9/visual_2/move_head
execute at @e[type=marker,tag=aoc_head] run tp @a ~ 32 ~ 0 90

execute at @e[type=marker,tag=aoc_head] run forceload add ~-17 ~-17 ~17 ~17
execute if score input_length aoc_calc matches 1.. run schedule function aoc_2022:logic/day_9/visual_2/loop 1t

execute unless score input_length aoc_calc matches 1.. run function aoc_library:io/print_answer
execute unless score input_length aoc_calc matches 1.. run forceload remove all
