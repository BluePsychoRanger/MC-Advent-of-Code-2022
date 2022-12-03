execute unless data storage bpr:aoc/library char run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [char] set","color":"red"},{"text":" ...aoc_library:functions/char/to_ascii (line 1)","color":"aqua"}]

scoreboard players reset num_invalid bpr_aoc
scoreboard players set num bpr_aoc 91
scoreboard players set char_last bpr_aoc 65
data merge storage bpr:aoc/library {chars:['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']}
function aoc_library:char/helper_functions/to_int_check

execute if score not_eq bpr_aoc matches 1 run scoreboard players set num bpr_aoc 122
execute if score not_eq bpr_aoc matches 1 run scoreboard players set char_last bpr_aoc 97
execute if score not_eq bpr_aoc matches 1 run data merge storage bpr:aoc/library {chars:['a','b','c','d','e','f','g','h','I','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']}
execute if score not_eq bpr_aoc matches 1 run function aoc_library:char/helper_functions/to_int_check

execute if score not_eq bpr_aoc matches 1 run scoreboard players set num_invalid bpr_aoc 1
data remove storage bpr:aoc/library chars
