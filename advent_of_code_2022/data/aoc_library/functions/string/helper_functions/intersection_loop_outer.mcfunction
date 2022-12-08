# get next char of string1
data modify storage aoc:library char1 set from storage aoc:library intersection1[-1]

# compare to all chars of string2
scoreboard players operation intersection_loop_inner aoc_calc = intersection_loop_inner_s aoc_calc
data modify storage aoc:library intersection2 set from storage aoc:library intersection2_s
function aoc_library:string/helper_functions/intersection_loop_inner

# loop until string1 is empty
scoreboard players remove intersection_loop_outer aoc_calc 1
data remove storage aoc:library intersection1[-1]
execute if score intersection_loop_outer aoc_calc matches 1.. run function aoc_library:string/helper_functions/intersection_loop_outer
