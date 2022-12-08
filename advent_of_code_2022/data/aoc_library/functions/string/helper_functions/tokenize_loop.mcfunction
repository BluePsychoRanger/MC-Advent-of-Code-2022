# get next string before delimeter
data remove storage aoc:library new_string
function aoc_library:string/helper_functions/tokenize_build
data modify storage aoc:library strings append from storage aoc:library new_string

# loop for all chars in string
execute if score i_string_tokenize aoc_calc matches 1.. run function aoc_library:string/helper_functions/tokenize_loop
