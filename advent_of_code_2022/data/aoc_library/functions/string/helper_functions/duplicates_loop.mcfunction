function aoc_library:string/split
data remove storage bpr:aoc/library string1[-1]
function aoc_library:string/concatenate

# get next char of string2
data modify storage bpr:aoc/library string1 set from storage bpr:aoc/library string
data remove storage bpr:aoc/library string2
data modify storage bpr:aoc/library string2 append from storage bpr:aoc/library temp_string_d[0]

# compare find inter
function aoc_library:string/intersection
data modify storage bpr:aoc/library duplicates append from storage bpr:aoc/library intersections[]

# loop for all chars of string
data modify storage bpr:aoc/library string set from storage bpr:aoc/library temp_string_d1
scoreboard players add split_index bpr_aoc 1
scoreboard players remove duplicates bpr_aoc 1
data remove storage bpr:aoc/library temp_string_d[0]
execute if score duplicates bpr_aoc matches 1.. run function aoc_library:string/helper_functions/duplicates_loop
