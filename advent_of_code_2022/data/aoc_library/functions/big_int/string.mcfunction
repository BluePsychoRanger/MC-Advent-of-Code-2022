forceload add -29999998 -98471
setblock -29999998 64 -98471 stone
setblock -29999998 65 -98471 acacia_sign

execute unless data storage bpr:aoc/library big_int run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [big_int] set","color":"red"},{"text":" ...aoc_library:functions/string/print (line 5)","color":"aqua"}]
data merge block -29999998 65 -98471 {Text1:'{"nbt":"big_int","storage":"bpr:aoc/library","interpret":true,"separator":""}'}

data modify storage bpr:aoc/library big_int_string set from block -29999998 65 -98471 Text1
