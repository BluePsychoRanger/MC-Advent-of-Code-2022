# TODO

execute store result score multiplier aoc_calc run data get storage aoc:library big_int2_temp_m[-1]

data modify storage aoc:library big_int set from storage aoc:library big_int1
function aoc_library:big_int/multiply_by_int

data modify storage aoc:library big_int2_temp set from storage aoc:library shift
data modify storage aoc:library big_int2_temp prepend from storage aoc:library big_int

data modify storage aoc:library shift append value 0
data remove storage aoc:library big_int2_temp_m[-1]
data modify storage aoc:library multiplcand_temp set from storage aoc:library multiplcand
# execute if score big_int2_length aoc_calc matches 1.. run
