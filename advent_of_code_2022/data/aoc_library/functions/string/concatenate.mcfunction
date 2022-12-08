# concatenates two strings (string1,string2)
# input:   storage | string1, string2
# output:  storage | string


# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library string1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string1] set","color":"red"},{"text":" ...aoc_library:functions/string/concatenate","color":"aqua"}]
execute if score dev aoc_const matches 1 unless data storage aoc:library string2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string2] set","color":"red"},{"text":" ...aoc_library:functions/string/concatenate","color":"aqua"}]

# combine arrays
data modify storage aoc:library string set from storage aoc:library string1
data modify storage aoc:library string append from storage aoc:library string2[]
