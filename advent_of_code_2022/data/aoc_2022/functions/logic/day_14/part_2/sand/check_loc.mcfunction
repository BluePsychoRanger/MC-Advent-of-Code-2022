scoreboard players add z aoc_calc 1

execute unless block ~ ~ ~1 air unless block ~-1 ~ ~1 air unless block ~1 ~ ~1 air run setblock ~ ~ ~ yellow_concrete
execute if score z aoc_calc > max_z aoc_calc run setblock ~ ~ ~ yellow_concrete

execute unless score z aoc_calc > max_z aoc_calc unless block ~ ~ ~ yellow_concrete unless block ~-1 ~ ~1 air unless block ~ ~ ~1 air if block ~1 ~ ~1 air positioned ~1 ~ ~1 run function aoc_2022:logic/day_14/part_2/sand/check_loc
execute unless score z aoc_calc > max_z aoc_calc unless block ~ ~ ~ yellow_concrete unless block ~ ~ ~1 air if block ~-1 ~ ~1 air positioned ~-1 ~ ~1 run function aoc_2022:logic/day_14/part_2/sand/check_loc
execute unless score z aoc_calc > max_z aoc_calc unless block ~ ~ ~ yellow_concrete if block ~ ~ ~1 air positioned ~ ~ ~1 run function aoc_2022:logic/day_14/part_2/sand/check_loc
