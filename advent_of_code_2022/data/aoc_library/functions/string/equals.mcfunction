execute unless data storage bpr:aoc/library string1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string1] set","color":"red"},{"text":" ...aoc_library:functions/string/equals (line 1)","color":"aqua"}]
execute unless data storage bpr:aoc/library string2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string2] set","color":"red"},{"text":" ...aoc_library:functions/string/equals (line 2)","color":"aqua"}]

data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string1
execute store result score not_eq bpr_aoc run data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string2

scoreboard players set string_eq bpr_aoc 1
execute if score not_eq bpr_aoc matches 1 run scoreboard players set string_eq bpr_aoc 0

scoreboard players reset not_eq bpr_aoc
data remove storage bpr:aoc/library temp_string
