# find desired monkey
data merge storage aoc:calc {monkeys_head:[]}
scoreboard players set check_monkey aoc_calc 0
scoreboard players operation desired aoc_calc = monkey aoc_calc
execute unless score desired aoc_calc matches 0 run function aoc_2022:logic/day_11/part_2/find_next_monkey

# update monkey
data modify storage aoc:calc monkey set from storage aoc:calc monkeys[0]
data modify storage aoc:calc monkeys prepend from storage aoc:calc monkeys_head[]

# throw items
execute store result score mod_operand aoc_calc run data get storage aoc:calc monkey.mod_operand
execute store result score operand aoc_calc run data get storage aoc:calc monkey.operand
execute store result score operator aoc_calc run data get storage aoc:calc monkey.operator
execute store result score divisor aoc_calc run data get storage aoc:calc monkey.divisor
execute store result score true aoc_calc run data get storage aoc:calc monkey.true
execute store result score false aoc_calc run data get storage aoc:calc monkey.false
execute store result score inspected aoc_calc run data get storage aoc:calc monkey.inspected
execute if data storage aoc:calc monkey.items[-1] run function aoc_2022:logic/day_11/part_2/inspect/check_items

# loop for all monkeys
scoreboard players add monkey aoc_calc 1
execute if score monkey aoc_calc < monkeys aoc_calc run function aoc_2022:logic/day_11/part_2/monkey_inspect
