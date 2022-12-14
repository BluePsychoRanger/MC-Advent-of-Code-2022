# push to stack
data remove storage aoc:calc packet1[0]
data remove storage aoc:calc packet2[0]
execute if data storage aoc:calc packet1[-1] run data modify storage aoc:calc stack append from storage aoc:calc packet1
execute if data storage aoc:calc packet2[-1] run data modify storage aoc:calc stack append from storage aoc:calc packet2

data modify storage aoc:calc packet1 set from storage aoc:calc next1
data modify storage aoc:calc packet2 set from storage aoc:calc next2

# recursive call
function aoc_2022:logic/day_13/part_1/compare
