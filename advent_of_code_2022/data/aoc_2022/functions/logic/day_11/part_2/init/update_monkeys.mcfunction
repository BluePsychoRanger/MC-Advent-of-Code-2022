data modify storage aoc:calc monkey set from storage aoc:calc monkeys[0]
data modify storage aoc:calc new_items set value []

function aoc_2022:logic/day_11/part_2/init/update_items
data modify storage aoc:calc monkey.items set from storage aoc:calc new_items

data modify storage aoc:calc new_monkeys append from storage aoc:calc monkey
data remove storage aoc:calc monkeys[0]
scoreboard players add monkey aoc_calc 1
execute if score monkey aoc_calc < monkeys aoc_calc run function aoc_2022:logic/day_11/part_2/init/update_monkeys
