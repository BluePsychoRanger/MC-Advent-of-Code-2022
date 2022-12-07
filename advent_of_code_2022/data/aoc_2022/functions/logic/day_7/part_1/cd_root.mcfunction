# check if current count is no more than 100000
data modify storage bpr:aoc/library big_int1 set from storage bpr:aoc current_count
data modify storage bpr:aoc/library big_int2 set value [1,0,0,0,0,0]
function aoc_library:big_int/compare
execute unless score big_int_gt bpr_aoc matches 1 run function aoc_2022:logic/day_7/part_1/add_total

# add to root count and change dir
data modify storage bpr:aoc/library big_int2 set from storage bpr:aoc stack_cnt[-1]
function aoc_library:big_int/add
data modify storage bpr:aoc current_count set from storage bpr:aoc/library big_int
data remove storage bpr:aoc stack_cnt[-1]
