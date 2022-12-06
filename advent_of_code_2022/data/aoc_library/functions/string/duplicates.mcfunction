# finds all matching characters between 
# input:  storage | string1 and string2
# output: storage | intersections


# error checking
execute unless data storage bpr:aoc/library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/duplicates","color":"aqua"}]

# set up loop variables
data modify storage bpr:aoc/library temp_string_d set from storage bpr:aoc/library string
data modify storage bpr:aoc/library temp_string_d1 set from storage bpr:aoc/library string

execute store result score duplicates bpr_aoc run data get storage bpr:aoc/library string

# get duplicates
scoreboard players set split_index bpr_aoc 0
data modify storage bpr:aoc/library duplicates set value []
function aoc_library:string/helper_functions/duplicates_loop
execute store result score duplicates bpr_aoc run data get storage bpr:aoc/library duplicates

# clean up
#data remove storage bpr:aoc/library temp_string_d
