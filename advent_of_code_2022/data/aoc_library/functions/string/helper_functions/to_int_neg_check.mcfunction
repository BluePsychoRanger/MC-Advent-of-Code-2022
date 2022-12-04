# check if the first char is '-'
data modify storage bpr:aoc/library string1 set from storage bpr:aoc/library temp_string[0]
data modify storage bpr:aoc/library string2 set value "-"
data modify storage bpr:aoc/library temp set from storage bpr:aoc/library temp_string
function aoc_library:string/equals
data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library temp
data remove storage bpr:aoc/library temp

# if negative, remove the first char and raise flag
execute if score string_eq bpr_aoc matches 1 run data remove storage bpr:aoc/library temp_string[0]
execute if score string_eq bpr_aoc matches 1 run scoreboard players remove i_string_to_int bpr_aoc 1
execute if score string_eq bpr_aoc matches 1 run scoreboard players set neg bpr_aoc 1
