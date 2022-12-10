setblock ~ ~ ~ black_concrete

execute if score pos aoc_calc = x aoc_calc run setblock ~ ~ ~ white_concrete
execute if score pos aoc_calc = x1 aoc_calc run setblock ~ ~ ~ white_concrete
execute if score pos aoc_calc = x2 aoc_calc run setblock ~ ~ ~ white_concrete

scoreboard players add pos aoc_calc 1
execute unless score pos aoc_calc matches 40 run tp @s ~1 ~ ~
execute if score pos aoc_calc matches 40 run tp @s ~-39 ~ ~1
execute if score pos aoc_calc matches 40 run scoreboard players set pos aoc_calc 0
