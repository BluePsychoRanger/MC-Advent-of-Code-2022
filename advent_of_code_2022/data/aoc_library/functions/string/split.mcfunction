# splits a string at a specific index, splits after the index
# input:  score   | split_index
# output: storage | string1, string2


# error checking
execute unless data storage bpr:aoc/library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/split (line 2)","color":"aqua"}]

# set up variables
execute store result score i_string_split bpr_aoc run data get storage bpr:aoc/library string
data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string
data modify storage bpr:aoc/library string1 set value []
data modify storage bpr:aoc/library string2 set value []

# split string at index
function aoc_library:string/helper_functions/split_loop

# clean up
data remove storage bpr:aoc/library temp_string
