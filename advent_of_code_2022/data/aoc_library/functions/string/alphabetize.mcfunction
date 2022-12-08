# alphabetizes characters in a string
# input:  storage | string
# output: storage | string


# summon marker for tag manipulation
execute at @a[limit=1] run summon marker ~ ~ ~ {CustomName:'"aoc_alphabetize"'}

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library string run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string] set","color":"red"},{"text":" ...aoc_library:functions/string/alphabetize","color":"aqua"}]

# set up loop variables
data modify storage aoc:library temp_string set from storage aoc:library string
execute store result score i_string_alphabetize aoc_calc run data get storage aoc:library string

# find duplicates first

# alphabetize
data modify storage aoc:library new_string set value []
execute as @e[type=marker,name=aoc_alphabetize,limit=1] run function aoc_library:string/helper_functions/alphabetize_loop
data modify storage aoc:library string set from storage aoc:library new_string

# clean up
data remove storage aoc:library temp_string
data remove storage aoc:library new_string
kill @e[type=marker,name=aoc_alphabetize]
