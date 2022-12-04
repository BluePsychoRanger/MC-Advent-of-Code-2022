data remove storage bpr:aoc next_char
execute store result score next_char bpr_aoc run data modify storage bpr:aoc next_char set from storage bpr:aoc next_string[0]

scoreboard players remove next_string_length bpr_aoc 1
execute if score next_string_length bpr_aoc matches 0.. run data remove storage bpr:aoc next_string[0]
