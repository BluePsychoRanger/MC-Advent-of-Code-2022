# finds duplicate characters in a string
# input:  storage | string
# output: storage | duplicates


# summon marker for tag manipulation
execute at @a[limit=1] run summon marker ~ ~ ~ {CustomName:'"aoc_find_duplicates"'}

# error checking
execute unless data storage bpr:aoc/library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/find_duplicates","color":"aqua"}]

# set up loop variables
data modify storage bpr:aoc/library temp_string set from storage bpr:aoc/library string
execute store result score i_string_find_duplicates bpr_aoc run data get storage bpr:aoc/library string

# get duplicates
data modify storage bpr:aoc/library duplicates set value []
execute as @e[type=marker,name=aoc_find_duplicates,limit=1] run function aoc_library:string/helper_functions/find_duplicates_loop
execute store result score duplicates bpr_aoc run data get storage bpr:aoc/library duplicates

# clean up
data remove storage bpr:aoc/library temp_string
kill @e[type=marker,name=aoc_find_duplicates]
