
data modify storage bpr:aoc/library string set from storage bpr:aoc next_string[0]
function aoc_library:string/to_int
function aoc_library:big_int/from_int

data modify storage bpr:aoc/library big_int1 set from storage bpr:aoc/library big_int
data modify storage bpr:aoc/library big_int2 set from storage bpr:aoc current_count
function aoc_library:big_int/add

data modify storage bpr:aoc current_count set from storage bpr:aoc/library big_int
