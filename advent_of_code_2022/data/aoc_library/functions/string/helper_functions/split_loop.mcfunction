scoreboard players remove string_length bpr_aoc 1

execute if score string_length bpr_aoc > split_index bpr_aoc run data modify storage bpr:aoc/library string2 prepend from storage bpr:aoc/library string[-1]
execute if score string_length bpr_aoc <= split_index bpr_aoc run data modify storage bpr:aoc/library string1 prepend from storage bpr:aoc/library string[-1]

data remove storage bpr:aoc/library string[-1]
execute if score string_length bpr_aoc matches 1.. run function aoc_library:string/helper_functions/split_loop
