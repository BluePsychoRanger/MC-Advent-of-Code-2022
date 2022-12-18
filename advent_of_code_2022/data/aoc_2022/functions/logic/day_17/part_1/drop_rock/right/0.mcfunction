# |..@@@@.|

scoreboard players set blocked aoc_calc 0
execute if score rock_pos aoc_calc matches 4 run scoreboard players set blocked aoc_calc 1
execute if score rock_pos aoc_calc matches 3 if score c7 aoc_calc >= rock_height aoc_calc run scoreboard players set blocked aoc_calc 1
execute if score rock_pos aoc_calc matches 2 if score c6 aoc_calc >= rock_height aoc_calc run scoreboard players set blocked aoc_calc 1
execute if score rock_pos aoc_calc matches 1 if score c5 aoc_calc >= rock_height aoc_calc run scoreboard players set blocked aoc_calc 1

execute unless score blocked aoc_calc matches 1 run scoreboard players add rock_pos aoc_calc 1
