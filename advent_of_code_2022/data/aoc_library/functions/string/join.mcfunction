# joins multiple strings to a single string component (only useful for printing)
#   joins with a separator: 0 for nothing, 1 for space, 2 for line break, 3 for comma, 4 for dash
# input:  storage | strings
#         score   | join_separator
# output: storage | joined_string


# forceload chunk for required blocks
forceload add -29999998 -98471
setblock -29999998 64 -98471 stone
setblock -29999998 65 -98471 acacia_sign

# error checking
execute if score dev aoc_const matches 1 unless data storage aoc:library strings run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [strings] set","color":"red"},{"text":" ...aoc_library:functions/string/join","color":"aqua"}]
# join using sign
## 1: space
execute if score join_separator aoc_calc matches 1 run data merge block -29999998 65 -98471 {Text1:'[{"nbt":"strings","storage":"aoc:bpr/library","interpret":true,"separator":" "}]'}
## 2: line break
execute if score join_separator aoc_calc matches 2 run data merge block -29999998 65 -98471 {Text1:'[{"nbt":"strings","storage":"aoc:bpr/library","interpret":true,"separator":"\\n"}]'}
## 3: comma
execute if score join_separator aoc_calc matches 3 run data merge block -29999998 65 -98471 {Text1:'[{"nbt":"strings","storage":"aoc:bpr/library","interpret":true,"separator":","}]'}
## 4: dash
execute if score join_separator aoc_calc matches 4 run data merge block -29999998 65 -98471 {Text1:'[{"nbt":"strings","storage":"aoc:bpr/library","interpret":true,"separator":"-"}]'}
## 0: nothing (default)
execute unless score join_separator aoc_calc matches 1..4 run data merge block -29999998 65 -98471 {Text1:'{"nbt":"strings","storage":"aoc:library","interpret":true,"separator":""}'}

# set storage from sign
data modify storage aoc:library joined_string set from block -29999998 65 -98471 Text1

# clean up
data remove storage aoc:library strings
scoreboard players set join_separator aoc_calc 0
