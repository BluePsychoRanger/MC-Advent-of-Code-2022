# compare
execute if score check1 aoc_calc > x2 aoc_calc run data modify storage aoc:calc lines_tail prepend from storage aoc:calc lines[-1]

# loop for each pos in list that's greater than the value
execute if score check1 aoc_calc > x2 aoc_calc run data remove storage aoc:calc lines[-1]
scoreboard players remove lines aoc_calc 1
execute if score lines aoc_calc matches 1.. if score check1 aoc_calc > x2 aoc_calc run function aoc_2022:logic/day_15/part_1/add_line/check_next
