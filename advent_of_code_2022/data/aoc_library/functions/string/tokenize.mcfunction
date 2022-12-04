# splits a string by delimeters
# input:  storage | string, delimeters
# output: storage | strings

# error checking
execute unless data storage bpr:aoc/library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/split (line 2)","color":"aqua"}]

# set up variables
execute store result score i_string_tokenize bpr_aoc run data get storage bpr:aoc/library string
data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string
data modify storage bpr:aoc/library strings set value []

# search for delimeters
function aoc_library:string/helper_functions/tokenize_loop

# clean up
data remove storage bpr:aoc/library temp_string
data remove storage bpr:aoc/library new_string
data remove storage bpr:aoc/library temp_delimeters
