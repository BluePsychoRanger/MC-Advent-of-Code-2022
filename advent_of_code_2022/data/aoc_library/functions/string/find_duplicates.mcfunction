# finds duplicate characters in a string
# input:  storage | string
# output: storage | duplicates


# summon marker for tag manipulation
execute at @a[limit=1] run summon marker ~ ~ ~ {CustomName:'"aoc_find_duplicates"'}

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/find_duplicates","color":"aqua"}]

# set up loop variables
data modify storage aoc:library temp_string set from storage aoc:library string
execute store result score i_string_find_duplicates aoc_calc run data get storage aoc:library string

# get duplicates
data modify storage aoc:library duplicates set value []
execute as @e[type=marker,name=aoc_find_duplicates,limit=1] run function aoc_library:string/helper_functions/find_duplicates_loop
execute store result score duplicates aoc_calc run data get storage aoc:library duplicates

# clean up
data remove storage aoc:library temp_string
kill @e[type=marker,name=aoc_find_duplicates]
