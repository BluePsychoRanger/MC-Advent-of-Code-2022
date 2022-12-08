# get next string in io input
# input:  none
# output: storage | next_string
#         score   | next_char_length


execute store result score next_string aoc_calc run data modify storage aoc:calc next_string set from storage aoc:calc Input[0]
execute store result score next_string_length aoc_calc run data get storage aoc:calc next_string

scoreboard players remove input_length aoc_calc 1
execute if score input_length aoc_calc matches 0.. run data remove storage aoc:calc Input[0]
