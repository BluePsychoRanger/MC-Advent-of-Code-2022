# get next char of string1
data modify storage bpr:aoc/library char1 set from storage bpr:aoc/library intersection1[-1]

# compare to all chars of string2
scoreboard players operation intersection_loop_inner bpr_aoc = intersection_loop_inner_s bpr_aoc
data modify storage bpr:aoc/library intersection2 set from storage bpr:aoc/library intersection2_s
function aoc_library:string/helper_functions/intersection_loop_inner

# loop until string1 is empty
scoreboard players remove intersection_loop_outer bpr_aoc 1
data remove storage bpr:aoc/library intersection1[-1]
execute if score intersection_loop_outer bpr_aoc matches 1.. run function aoc_library:string/helper_functions/intersection_loop_outer
