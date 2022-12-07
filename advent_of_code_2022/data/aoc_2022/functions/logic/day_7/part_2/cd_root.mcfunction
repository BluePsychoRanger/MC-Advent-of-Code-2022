# check if current count is greater than or equal to the minimum
data modify storage bpr:aoc/library big_int1 set from storage bpr:aoc current_count
data modify storage bpr:aoc/library big_int2 set from storage bpr:aoc min
function aoc_library:big_int/compare

execute unless score big_int_lt bpr_aoc matches 1 run data modify storage bpr:aoc options append from storage bpr:aoc current_count

# add to root count and change dir
data modify storage bpr:aoc/library big_int2 set from storage bpr:aoc stack_cnt[-1]
function aoc_library:big_int/add
data modify storage bpr:aoc current_count set from storage bpr:aoc/library big_int
data remove storage bpr:aoc stack_cnt[-1]
