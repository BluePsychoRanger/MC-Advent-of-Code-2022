data modify storage aoc:library string set from storage aoc:calc next_string[0]
function aoc_library:string/to_int

scoreboard players operation current_count aoc_calc += num aoc_calc
