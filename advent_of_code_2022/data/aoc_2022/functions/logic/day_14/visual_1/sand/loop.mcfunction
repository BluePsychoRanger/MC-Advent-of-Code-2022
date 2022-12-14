scoreboard players set z aoc_calc -1
scoreboard players set placed aoc_calc 0
execute positioned 500 -32 0 run function aoc_2022:logic/day_14/visual_1/sand/check_loc

execute unless score z aoc_calc > max_z aoc_calc run scoreboard players add answer aoc_answer 1
execute unless score z aoc_calc > max_z aoc_calc run schedule function aoc_2022:logic/day_14/visual_1/sand/loop 3t
execute if score z aoc_calc > max_z aoc_calc run function aoc_library:io/print_answer
execute if score z aoc_calc > max_z aoc_calc run forceload remove all
