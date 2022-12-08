# get next string in io token
# input:  none
# output: storage | next_token
#         score   | next_token_valid


data remove storage aoc:calc next_token
execute store result score next_token_valid aoc_calc run data modify storage aoc:calc next_token set from storage aoc:calc next_string[0]
execute store result score next_token_length aoc_calc run data get storage aoc:calc next_token

scoreboard players remove next_string_length aoc_calc 1
execute if score next_string_length aoc_calc matches 0.. run data remove storage aoc:calc next_string[0]
