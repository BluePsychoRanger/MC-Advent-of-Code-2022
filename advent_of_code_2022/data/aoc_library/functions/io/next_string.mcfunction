execute store result score next_string bpr_aoc run data modify storage bpr:aoc next_string set from storage bpr:aoc Input[-1]

scoreboard players remove input_length bpr_aoc 1
execute if score input_length bpr_aoc matches 0.. run data remove storage bpr:aoc Input[-1]