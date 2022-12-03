data modify storage bpr:aoc/library string1 set from storage bpr:aoc/library match1[-1]

scoreboard players operation match_loop_inner bpr_aoc = match_loop_inner_s bpr_aoc
data modify storage bpr:aoc/library match2 set from storage bpr:aoc/library match2_s
function aoc_library:string/helper_functions/match_loop_inner

scoreboard players remove match_loop_outer bpr_aoc 1
data remove storage bpr:aoc/library match1[-1]
execute if score match_loop_outer bpr_aoc matches 1.. run function aoc_library:string/helper_functions/match_loop_outer
