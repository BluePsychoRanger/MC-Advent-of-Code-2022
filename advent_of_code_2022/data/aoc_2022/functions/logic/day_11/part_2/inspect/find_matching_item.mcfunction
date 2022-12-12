data modify storage aoc:calc item_head append from storage aoc:calc monkey.items[0][0]
data remove storage aoc:calc monkey.items[0][0]

scoreboard players add check_monkey aoc_calc 1
execute if score check_monkey aoc_calc < desired aoc_calc run function aoc_2022:logic/day_11/part_2/inspect/find_matching_item
