# concatenates two strings (string1,string2)
# input:   storage | string1, string2
# output:  storage | string


# error checking
execute unless data storage bpr:aoc/library string1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string1] set","color":"red"},{"text":" ...aoc_library:functions/string/concatenate","color":"aqua"}]
execute unless data storage bpr:aoc/library string2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string2] set","color":"red"},{"text":" ...aoc_library:functions/string/concatenate","color":"aqua"}]

# combine arrays
data modify storage bpr:aoc/library string set from storage bpr:aoc/library string1
data modify storage bpr:aoc/library string append from storage bpr:aoc/library string2[]
