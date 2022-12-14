data modify storage aoc:calc stack[-1] append from storage aoc:calc parsed
data modify storage aoc:calc parsed set from storage aoc:calc stack[-1]
data remove storage aoc:calc stack[-1]
