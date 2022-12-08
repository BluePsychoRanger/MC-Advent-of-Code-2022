# splits a string at a specific index, splits after the index
# input:  score   | split_index
# output: storage | string1, string2


# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/split (line 2)","color":"aqua"}]

# set up variables
execute store result score i_string_split aoc_calc run data get storage aoc:library string
data modify storage aoc:library temp_string set from storage aoc:library string
data modify storage aoc:library string1 set value []
data modify storage aoc:library string2 set value []

# split string at index
function aoc_library:string/helper_functions/split_loop

# clean up
data remove storage aoc:library temp_string
