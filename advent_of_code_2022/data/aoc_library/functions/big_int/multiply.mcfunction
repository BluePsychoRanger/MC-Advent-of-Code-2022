execute unless data storage bpr:aoc/library big_int1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int1] set","color":"red"},{"text":" ...aoc_library:functions/big_int/multiply (line 1)","color":"aqua"}]
execute unless data storage bpr:aoc/library big_int2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int2] set","color":"red"},{"text":" ...aoc_library:functions/big_int/multiply (line 2)","color":"aqua"}]

data modify storage bpr:aoc/library big_int1_temp_m set from storage bpr:aoc/library big_int1
data modify storage bpr:aoc/library big_int2_temp_m set from storage bpr:aoc/library big_int2

scoreboard players set carry_over bpr_aoc 0
data modify storage bpr:aoc/library shift set value []
data modify storage bpr:aoc/library big_int set value []
function aoc_library:big_int/helper_functions/multiply_loop

scoreboard players reset carry_over bpr_aoc
scoreboard players reset cont bpr_aoc
scoreboard players reset digit1 bpr_aoc
scoreboard players reset digit2 bpr_aoc
data remove storage bpr:aoc/library big_int2_temp_m
data remove storage bpr:aoc/library multiplicand
data remove storage bpr:aoc/library multiplicand_temp
data remove storage bpr:aoc/library shift
