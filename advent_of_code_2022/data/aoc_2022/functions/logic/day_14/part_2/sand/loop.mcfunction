scoreboard players set z aoc_calc -1
function aoc_2022:logic/day_14/part_2/sand/check_loc

scoreboard players add answer aoc_answer 1
execute unless block ~ ~ ~ yellow_concrete run function aoc_2022:logic/day_14/part_2/sand/loop
