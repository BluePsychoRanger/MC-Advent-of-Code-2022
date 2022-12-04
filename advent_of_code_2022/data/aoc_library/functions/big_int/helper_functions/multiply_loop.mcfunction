# TODO

execute store result score multiplier bpr_aoc run data get storage bpr:aoc/library big_int2_temp_m[-1]

data modify storage bpr:aoc/library big_int set from storage bpr:aoc/library big_int1
function aoc_library:big_int/multiply_by_int

data modify storage bpr:aoc/library big_int2_temp set from storage bpr:aoc/library shift
data modify storage bpr:aoc/library big_int2_temp prepend from storage bpr:aoc/library big_int

data modify storage bpr:aoc/library shift append value 0
data remove storage bpr:aoc/library big_int2_temp_m[-1]
data modify storage bpr:aoc/library multiplcand_temp set from storage bpr:aoc/library multiplcand
# execute if score big_int2_length bpr_aoc matches 1.. run
