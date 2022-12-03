# get total runtime
execute store result score timer bpr_aoc run worldborder get
scoreboard players operation runtime bpr_aoc -= timer bpr_aoc
scoreboard players operation runtime_s bpr_aoc = runtime bpr_aoc
scoreboard players operation runtime_ms bpr_aoc = runtime bpr_aoc

# split runtime where the decimal point is
scoreboard players operation runtime_s bpr_aoc /= 1000 bpr_aoc_const
scoreboard players operation runtime_ms bpr_aoc %= 1000 bpr_aoc_const

# store time
forceload add -29999998 -98471
setblock -29999998 64 -98471 stone
setblock -29999998 65 -98471 acacia_sign

data modify storage bpr:aoc/library time set value []
execute if score runtime_ms bpr_aoc matches ..99 run data modify storage bpr:aoc/library time append value 0
execute if score runtime_ms bpr_aoc matches ..9 run data modify storage bpr:aoc/library time append value 0
data merge block -29999998 65 -98471 {Text1:"[\"\",\"(\",{\"score\":{\"name\":\"runtime_s\",\"objective\":\"bpr_aoc\"},\"color\":\"yellow\"},{\"text\":\".\",\"color\":\"yellow\"},{\"nbt\":\"time\",\"block\":\"bpr:aoc/library\",\"color\":\"yellow\",\"interpret\":true},{\"score\":{\"name\":\"runtime_ms\",\"objective\":\"bpr_aoc\"},\"color\":\"yellow\"},\"s)\"]"}
data modify storage bpr:aoc/library time set from block -29999998 65 -98471 Text1

# revert worldborder
worldborder center 0 0
worldborder set 6000000

# clean up
scoreboard players reset timer bpr_aoc
scoreboard players reset runtime_s bpr_aoc
scoreboard players reset runtime_ms bpr_aoc
