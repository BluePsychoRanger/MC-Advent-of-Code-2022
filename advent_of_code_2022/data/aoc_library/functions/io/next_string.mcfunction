# get next string in io input
# input:  none
# output: storage | next_string
#         score   | next_char_length


execute store result score next_string bpr_aoc run data modify storage bpr:aoc next_string set from storage bpr:aoc Input[-1]
execute store result score next_string_length bpr_aoc run data get storage bpr:aoc next_string

scoreboard players remove input_length bpr_aoc 1
execute if score input_length bpr_aoc matches 0.. run data remove storage bpr:aoc Input[-1]
