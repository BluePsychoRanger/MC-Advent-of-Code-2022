data modify storage bpr:aoc/library string set from storage bpr:aoc next_string[0]
function aoc_library:string/to_int

scoreboard players operation current_count bpr_aoc += num bpr_aoc
