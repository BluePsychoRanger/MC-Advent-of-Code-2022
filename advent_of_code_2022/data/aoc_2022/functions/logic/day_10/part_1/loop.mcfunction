function aoc_library:io/next_string

# cycle 1
scoreboard players add cycle aoc_calc 1
execute if score cycle aoc_calc = next_pulse aoc_calc run function aoc_2022:logic/day_10/part_1/check_signal

function aoc_library:io/next_char
function aoc_library:io/next_char
function aoc_library:io/next_char
function aoc_library:io/next_char
function aoc_library:io/next_char

execute if score next_string_length aoc_calc matches 1.. run function aoc_library:io/string_to_int

# cycle 2
execute if score next_string_length aoc_calc matches 1.. run function aoc_2022:logic/day_10/part_1/addx

# loop
execute if score input_length aoc_calc matches 1.. if score cycle aoc_calc < last aoc_calc run function aoc_2022:logic/day_10/part_1/loop
