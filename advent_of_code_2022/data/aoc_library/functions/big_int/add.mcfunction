execute unless data storage bpr:aoc/library big_int1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int1] set","color":"red"},{"text":" ...aoc_library:functions/big_int/add (line 1)","color":"aqua"}]
execute unless data storage bpr:aoc/library big_int2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int2] set","color":"red"},{"text":" ...aoc_library:functions/big_int/add (line 2)","color":"aqua"}]

data modify storage bpr:aoc/library big_int1_temp set from storage bpr:aoc/library big_int1
data modify storage bpr:aoc/library big_int2_temp set from storage bpr:aoc/library big_int2
execute store result score big_int1_length bpr_aoc run data get storage bpr:aoc/library big_int1
execute store result score big_int2_length bpr_aoc run data get storage bpr:aoc/library big_int2
scoreboard players set carry_over bpr_aoc 0

data modify storage bpr:aoc/library big_int set value []
function aoc_library:big_int/helper_functions/add_loop

scoreboard players reset big_int1_length bpr_aoc
scoreboard players reset big_int2_length bpr_aoc
scoreboard players reset carry_over bpr_aoc
scoreboard players reset cont bpr_aoc
scoreboard players reset digit1 bpr_aoc
scoreboard players reset digit2 bpr_aoc
data remove storage bpr:aoc/library big_int1_temp
data remove storage bpr:aoc/library big_int2_temp
