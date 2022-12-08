# ends the real-time counter and prints the runtime
# input:  none
# output: none


# get total runtime
execute store result score timer aoc_calc run worldborder get
scoreboard players operation runtime aoc_calc -= timer aoc_calc
scoreboard players operation runtime_s aoc_calc = runtime aoc_calc
scoreboard players operation runtime_ms aoc_calc = runtime aoc_calc

# split runtime where the decimal point is
scoreboard players operation runtime_s aoc_calc /= 1000 aoc_const
scoreboard players operation runtime_ms aoc_calc %= 1000 aoc_const

# store time
forceload add -29999998 -98471
setblock -29999998 64 -98471 stone
setblock -29999998 65 -98471 acacia_sign

data modify storage aoc:library time set value []
execute if score runtime_ms aoc_calc matches ..99 run data modify storage aoc:library time append value 0
execute if score runtime_ms aoc_calc matches ..9 run data modify storage aoc:library time append value 0
data merge block -29999998 65 -98471 {Text1:"[\"\",\"(\",{\"score\":{\"name\":\"runtime_s\",\"objective\":\"aoc_calc\"},\"color\":\"yellow\"},{\"text\":\".\",\"color\":\"yellow\"},{\"nbt\":\"time\",\"block\":\"aoc:library\",\"color\":\"yellow\",\"interpret\":true},{\"score\":{\"name\":\"runtime_ms\",\"objective\":\"aoc_calc\"},\"color\":\"yellow\"},\"s)\"]"}
data modify storage aoc:library time set from block -29999998 65 -98471 Text1

# revert worldborder
scoreboard players operation runtime aoc_answer = runtime aoc_calc
worldborder center 0 0
worldborder set 6000000
