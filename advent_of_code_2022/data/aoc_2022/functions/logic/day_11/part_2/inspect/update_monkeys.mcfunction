# find desired monkey
data merge storage aoc:calc {monkeys_head:[]}
scoreboard players set check_monkey aoc_calc 0
scoreboard players operation desired aoc_calc = thrown_to aoc_calc
execute unless score desired aoc_calc matches 0 run function aoc_2022:logic/day_11/part_2/find_next_monkey

# update monkey
data modify storage aoc:calc monkeys[0].items append from storage aoc:calc item
data modify storage aoc:calc monkeys prepend from storage aoc:calc monkeys_head[]

# find desired monkey
data merge storage aoc:calc {monkeys_head:[]}
scoreboard players set check_monkey aoc_calc 0
scoreboard players operation desired aoc_calc = monkey aoc_calc
execute unless score desired aoc_calc matches 0 run function aoc_2022:logic/day_11/part_2/find_next_monkey

# update monkey
data remove storage aoc:calc monkeys[0].items[0]
data modify storage aoc:calc monkeys[0].inspected set from storage aoc:calc monkey.inspected
data modify storage aoc:calc monkeys prepend from storage aoc:calc monkeys_head[]
