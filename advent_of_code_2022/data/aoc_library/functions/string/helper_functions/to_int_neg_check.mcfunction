# check if the first char is '-'
data modify storage aoc:library string1 set from storage aoc:library temp_string[0]
data modify storage aoc:library string2 set value "-"
data modify storage aoc:library temp set from storage aoc:library temp_string
function aoc_library:string/equals
data modify storage aoc:library temp_string set from storage aoc:library temp
data remove storage aoc:library temp

# if negative, remove the first char and raise flag
execute if score string_eq aoc_calc matches 1 run data remove storage aoc:library temp_string[0]
execute if score string_eq aoc_calc matches 1 run scoreboard players remove i_string_to_int aoc_calc 1
execute if score string_eq aoc_calc matches 1 run scoreboard players set neg aoc_calc 1
