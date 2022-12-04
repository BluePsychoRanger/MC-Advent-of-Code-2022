data remove storage bpr:aoc/library new_string
function aoc_library:string/helper_functions/tokenize_build
data modify storage bpr:aoc/library strings append from storage bpr:aoc/library new_string

execute if score i_string_tokenize bpr_aoc matches 1.. run function aoc_library:string/helper_functions/tokenize_loop
