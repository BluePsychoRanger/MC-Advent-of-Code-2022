# get next char in io string
# input:  none
# output: storage | next_char
#         score   | next_char_valid


function aoc_library:io/next_char

scoreboard players remove skip_count aoc_calc 1
execute if score skip_count aoc_calc matches 1.. if score next_string_length aoc_calc matches 1.. run function aoc_library:io/skip_chars
