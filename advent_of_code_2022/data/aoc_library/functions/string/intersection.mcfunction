# finds all matching characters between 
# input:  storage | string1 and string2
# output: storage | intersections


# error checking
execute unless data storage bpr:aoc/library string1 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string1] set","color":"red"},{"text":" ...aoc_library:functions/string/intersection","color":"aqua"}]
execute unless data storage bpr:aoc/library string2 run tellraw @a [{"text":"[ERROR] ","color":"dark_red"},{"text":"No [string2] set","color":"red"},{"text":" ...aoc_library:functions/string/intersection","color":"aqua"}]

# set up loop variables
data modify storage bpr:aoc/library intersection1 set from storage bpr:aoc/library string1
data modify storage bpr:aoc/library intersection2 set from storage bpr:aoc/library string2
data modify storage bpr:aoc/library intersection2_s set from storage bpr:aoc/library string2

execute store result score intersection_loop_outer bpr_aoc run data get storage bpr:aoc/library intersection1
execute store result score intersection_loop_inner bpr_aoc run data get storage bpr:aoc/library intersection2
execute store result score intersection_loop_inner_s bpr_aoc run data get storage bpr:aoc/library intersection2

# get intersections
data modify storage bpr:aoc/library intersections set value []
function aoc_library:string/helper_functions/intersection_loop_outer

# clean up
data remove storage bpr:aoc/library intersection1
data remove storage bpr:aoc/library intersection2
data remove storage bpr:aoc/library intersection2_s
