# get next string in io token
# input:  none
# output: storage | next_token
#         score   | next_token_valid


data remove storage bpr:aoc next_token
execute store result score next_token_valid bpr_aoc run data modify storage bpr:aoc next_token set from storage bpr:aoc next_string[0]
execute store result score next_token_length bpr_aoc run data get storage bpr:aoc next_token

scoreboard players remove next_string_length bpr_aoc 1
execute if score next_string_length bpr_aoc matches 0.. run data remove storage bpr:aoc next_string[0]
