forceload add -29999998 -98471
setblock -29999998 64 -98471 stone
setblock -29999998 65 -98471 acacia_sign

execute unless data storage bpr:aoc/library strings run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [strings] set","color":"red"},{"text":" ...aoc_library:functions/string/to_int (line 5)","color":"aqua"}]

# 0: nothing (default)
data merge block -29999998 65 -98471 {Text1:'{"nbt":"strings","storage":"bpr:aoc/library","interpret":true,"separator":""}'}
# 1: spaces
execute if score concat_separator bpr_aoc matches 1 run data merge block -29999998 65 -98471 {Text1:'[{"nbt":"strings","storage":"aoc:bpr/library","interpret":true,"separator":" "}]'}
# 2: line break
execute if score concat_separator bpr_aoc matches 2 run data merge block -29999998 65 -98471 {Text1:'[{"nbt":"strings","storage":"aoc:bpr/library","interpret":true,"separator":"\\n"}]'}

data modify storage bpr:aoc/library string set from block -29999998 65 -98471 Text1

data remove storage bpr:aoc/library strings
scoreboard players reset concat_separator
