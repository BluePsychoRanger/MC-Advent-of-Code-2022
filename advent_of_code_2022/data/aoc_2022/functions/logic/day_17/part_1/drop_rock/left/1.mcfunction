# |...@...|
# |..@@@..|
# |...@...|

scoreboard players set blocked aoc_calc 0
scoreboard players operation rock_height2 aoc_calc = rock_height aoc_calc
scoreboard players add rock_height2 aoc_calc 1
execute if score rock_pos aoc_calc matches 1 run scoreboard players set blocked aoc_calc 1
execute if score rock_pos aoc_calc matches 2 if score c1 aoc_calc >= rock_height aoc_calc run scoreboard players set blocked aoc_calc 1
execute if score rock_pos aoc_calc matches 3 if score c2 aoc_calc >= rock_height aoc_calc run scoreboard players set blocked aoc_calc 1
execute if score rock_pos aoc_calc matches 4 if score c2 aoc_calc >= rock_height aoc_calc run scoreboard players set blocked aoc_calc 1
execute if score rock_pos aoc_calc matches 5 if score c2 aoc_calc >= rock_height aoc_calc run scoreboard players set blocked aoc_calc 1

execute unless score blocked aoc_calc matches 1 run scoreboard players remove rock_pos aoc_calc 1
