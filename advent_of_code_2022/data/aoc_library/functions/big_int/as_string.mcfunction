# converts a big_int into a parsed string
# input:  storage | big_int
# output: storage | big_int_string


# forceload chunk for required blocks
forceload add -29999998 -98471
setblock -29999998 64 -98471 stone
setblock -29999998 65 -98471 acacia_sign

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library big_int run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int] set","color":"red"},{"text":" ...aoc_library:functions/string/as_string","color":"aqua"}]

# join all chars using a sign
data merge block -29999998 65 -98471 {Text1:'{"nbt":"big_int","storage":"aoc:library","interpret":true,"separator":""}'}
data modify storage aoc:library big_int_string set from block -29999998 65 -98471 Text1
