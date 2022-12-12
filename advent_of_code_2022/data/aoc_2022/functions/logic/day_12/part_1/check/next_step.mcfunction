
setblock ~ ~-1 ~ gray_concrete
scoreboard players operation current aoc_step = @s aoc_step
scoreboard players add current aoc_step 1

execute if block ~ ~2 ~ gold_block run scoreboard players set found aoc_calc 1
execute if block ~ ~2 ~ gold_block run scoreboard players operation answer aoc_answer = @s aoc_step

execute unless score found aoc_calc matches 1 positioned ~1 ~1 ~ if block ~ ~ ~ air run function aoc_2022:logic/day_12/part_1/check/drop
execute unless score found aoc_calc matches 1 positioned ~-1 ~1 ~ if block ~ ~ ~ air run function aoc_2022:logic/day_12/part_1/check/drop
execute unless score found aoc_calc matches 1 positioned ~ ~1 ~1 if block ~ ~ ~ air run function aoc_2022:logic/day_12/part_1/check/drop
execute unless score found aoc_calc matches 1 positioned ~ ~1 ~-1 if block ~ ~ ~ air run function aoc_2022:logic/day_12/part_1/check/drop

kill @s
