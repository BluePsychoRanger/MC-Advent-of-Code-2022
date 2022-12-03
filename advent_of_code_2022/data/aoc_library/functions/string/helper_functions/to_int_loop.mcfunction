data modify storage bpr:aoc/library char set from storage bpr:aoc/library temp_string[0]
function aoc_library:char/to_int

scoreboard players operation num_from_string bpr_aoc *= 10 bpr_aoc_const
scoreboard players operation num_from_string bpr_aoc += num bpr_aoc

scoreboard players remove i_string_to_int bpr_aoc 1
data remove storage bpr:aoc/library temp_string[0]
execute if score i_string_to_int bpr_aoc matches 1.. run function aoc_library:string/helper_functions/to_int_loop
