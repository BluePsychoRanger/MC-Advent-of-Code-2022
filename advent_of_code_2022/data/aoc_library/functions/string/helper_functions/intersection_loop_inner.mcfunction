# get next char of string2
data modify storage aoc:library char2 set from storage aoc:library intersection2[-1]

# compare chars
function aoc_library:char/equals
execute if score char_eq aoc_calc matches 1 run data modify storage aoc:library intersections append from storage aoc:library char1

# loop for all chars of string 2
scoreboard players remove intersection_loop_inner aoc_calc 1
data remove storage aoc:library intersection2[-1]
execute if score intersection_loop_inner aoc_calc matches 1.. run function aoc_library:string/helper_functions/intersection_loop_inner
