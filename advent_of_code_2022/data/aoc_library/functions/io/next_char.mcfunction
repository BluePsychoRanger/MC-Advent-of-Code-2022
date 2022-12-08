# get next char in io string
# input:  none
# output: storage | next_char
#         score   | next_char_valid


data remove storage aoc:calc next_char
execute store result score next_char_valid aoc_calc run data modify storage aoc:calc next_char set from storage aoc:calc next_string[0]

scoreboard players remove next_string_length aoc_calc 1
execute if score next_string_length aoc_calc matches 0.. run data remove storage aoc:calc next_string[0]
