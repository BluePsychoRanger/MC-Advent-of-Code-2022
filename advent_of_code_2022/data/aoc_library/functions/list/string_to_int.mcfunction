execute unless data storage bpr:aoc/library list run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [list] set","color":"red"},{"text":" ...aoc_library:functions/list/string/to_int (line 1)","color":"aqua"}]

data merge storage bpr:aoc/library {new_list:[]}
execute store result score i_list_string_to_int bpr_aoc run data get storage bpr:aoc/library list

function aoc_library:list/helper_functions/string_to_int_loop
data modify storage bpr:aoc/library list set from storage bpr:aoc/library new_list

data remove storage bpr:aoc/library new_list
scoreboard players reset i_list_string_to_int bpr_aoc
