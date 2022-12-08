# splits a string by delimeters
# input:  storage | string, delimeters
# output: storage | strings

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/split (line 2)","color":"aqua"}]

# set up variables
execute store result score i_string_tokenize aoc_calc run data get storage aoc:library string
data modify storage aoc:library temp_string set from storage aoc:library string
data modify storage aoc:library strings set value []

# search for delimeters
function aoc_library:string/helper_functions/tokenize_loop

# clean up
data remove storage aoc:library temp_string
data remove storage aoc:library new_string
data remove storage aoc:library temp_delimeters
