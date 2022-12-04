execute store result score i_string_tokenize bpr_aoc run data get storage bpr:aoc/library string

data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string
data modify storage bpr:aoc/library strings set value []
function aoc_library:string/helper_functions/tokenize_loop

data remove storage bpr:aoc/library temp_string
data remove storage bpr:aoc/library new_string
data remove storage bpr:aoc/library temp_delimeters
scoreboard players reset i_string_tokenize bpr_aoc
scoreboard players reset i_string_delim bpr_aoc
scoreboard players reset found_delim bpr_aoc
scoreboard players reset not_eq bpr_aoc
