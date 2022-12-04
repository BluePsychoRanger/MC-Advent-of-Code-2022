execute store result score i_string_split bpr_aoc run data get storage bpr:aoc/library string

data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string
data modify storage bpr:aoc/library string1 set value []
data modify storage bpr:aoc/library string2 set value []
function aoc_library:string/helper_functions/split_loop

data remove storage bpr:aoc/library temp_string
scoreboard players reset i_string_split bpr_aoc
