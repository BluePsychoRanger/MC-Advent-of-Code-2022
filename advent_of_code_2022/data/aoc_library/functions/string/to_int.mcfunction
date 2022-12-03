execute unless data storage bpr:aoc/library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/to_int (line 1)","color":"aqua"}]

data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string
execute store result score i_string_to_int bpr_aoc run data get storage bpr:aoc/library string

scoreboard players reset num_from_string bpr_aoc
scoreboard players reset num_invalid bpr_aoc
execute if score i_string_to_int bpr_aoc matches 0 run scoreboard players set num_from_string bpr_aoc -1
execute if score i_string_to_int bpr_aoc matches 0 run scoreboard players set num_invalid bpr_aoc 1

execute if score i_string_to_int bpr_aoc matches 2.. run function aoc_library:string/helper_functions/to_int_neg_check

execute if score i_string_to_int bpr_aoc matches 1.. run function aoc_library:string/helper_functions/to_int_loop
scoreboard players operation num bpr_aoc = num_from_string bpr_aoc
execute if score neg bpr_aoc matches 1 run scoreboard players operation num bpr_aoc *= -1 bpr_aoc_const

data remove storage bpr:aoc/library temp_string
scoreboard players reset num_from_string bpr_aoc
scoreboard players reset i_string_to_int bpr_aoc
scoreboard players reset not_eq bpr_aoc
scoreboard players reset eq bpr_aoc
scoreboard players reset neg bpr_aoc
