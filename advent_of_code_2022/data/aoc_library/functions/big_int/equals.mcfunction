execute unless data storage bpr:aoc/library big_int1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int1] set","color":"red"},{"text":" ...aoc_library:functions/big_int/equals (line 1)","color":"aqua"}]
execute unless data storage bpr:aoc/library big_int2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int2] set","color":"red"},{"text":" ...aoc_library:functions/big_int/equals (line 2)","color":"aqua"}]

data modify storage bpr:aoc/library temp_big_int set from storage bpr:aoc/library big_int1
execute store result score not_eq bpr_aoc run data modify storage bpr:aoc/library temp_big_int set from storage bpr:aoc/library big_int2

scoreboard players set big_int_eq bpr_aoc 1
execute if score not_eq bpr_aoc matches 1 run scoreboard players set big_int_eq bpr_aoc 0

scoreboard players reset not_eq bpr_aoc
data remove storage bpr:aoc/library temp_big_int
