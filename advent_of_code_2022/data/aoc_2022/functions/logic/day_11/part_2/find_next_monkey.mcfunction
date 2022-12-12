data modify storage aoc:calc monkeys_head append from storage aoc:calc monkeys[0]
data remove storage aoc:calc monkeys[0]

scoreboard players add check_monkey aoc_calc 1
execute if score check_monkey aoc_calc < desired aoc_calc run function aoc_2022:logic/day_11/part_2/find_next_monkey
