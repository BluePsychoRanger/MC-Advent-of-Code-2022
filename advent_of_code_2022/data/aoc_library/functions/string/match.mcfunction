data modify storage bpr:aoc/library match1 set from storage bpr:aoc/library string1
data modify storage bpr:aoc/library match2 set from storage bpr:aoc/library string2
data modify storage bpr:aoc/library match2_s set from storage bpr:aoc/library string2

execute store result score match_loop_outer bpr_aoc run data get storage bpr:aoc/library match1
execute store result score match_loop_inner bpr_aoc run data get storage bpr:aoc/library match2
execute store result score match_loop_inner_s bpr_aoc run data get storage bpr:aoc/library match2

data modify storage bpr:aoc/library matches set value []
function aoc_library:string/helper_functions/match_loop_outer

data remove storage bpr:aoc/library match1
data remove storage bpr:aoc/library match2
data remove storage bpr:aoc/library match2_s
scoreboard players reset match_loop_outer bpr_aoc
scoreboard players reset match_loop_inner bpr_aoc
scoreboard players reset match_loop_inner_s bpr_aoc
