execute if score to aoc_calc matches 1 run data modify storage aoc:calc boxes[1] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 2 run data modify storage aoc:calc boxes[2] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 3 run data modify storage aoc:calc boxes[3] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 4 run data modify storage aoc:calc boxes[4] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 5 run data modify storage aoc:calc boxes[5] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 6 run data modify storage aoc:calc boxes[6] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 7 run data modify storage aoc:calc boxes[7] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 8 run data modify storage aoc:calc boxes[8] append from storage aoc:calc boxes[5][-1]
execute if score to aoc_calc matches 9 run data modify storage aoc:calc boxes[9] append from storage aoc:calc boxes[5][-1]

data remove storage aoc:calc boxes[5][-1]
