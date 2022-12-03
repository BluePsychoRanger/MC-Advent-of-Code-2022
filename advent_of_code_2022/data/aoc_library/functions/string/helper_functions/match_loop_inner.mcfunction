data modify storage bpr:aoc/library string2 set from storage bpr:aoc/library match2[-1]

function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run data modify storage bpr:aoc/library matches append from storage bpr:aoc/library string1

scoreboard players remove match_loop_inner bpr_aoc 1
data remove storage bpr:aoc/library match2[-1]
execute if score match_loop_inner bpr_aoc matches 1.. run function aoc_library:string/helper_functions/match_loop_inner
