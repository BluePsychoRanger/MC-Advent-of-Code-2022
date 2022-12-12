kill @e[type=marker,tag=aoc_build]
scoreboard players set i_day12 aoc_calc 0
scoreboard players set found aoc_calc 0
scoreboard players set @e[type=marker,tag=aoc_traverse] aoc_step 0
schedule function aoc_2022:logic/day_12/visual_2/check/loop 20t
