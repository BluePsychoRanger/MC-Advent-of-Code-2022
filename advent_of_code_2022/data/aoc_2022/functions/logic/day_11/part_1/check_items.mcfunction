execute store result storage aoc:calc monkey.inspected int 1 run scoreboard players add inspected aoc_calc 1
execute store result score worry_level aoc_calc run data get storage aoc:calc monkey.items[0]

execute if score operator aoc_calc matches 1 run scoreboard players operation worry_level aoc_calc *= operand aoc_calc
execute if score operator aoc_calc matches 2 run scoreboard players operation worry_level aoc_calc += operand aoc_calc
execute if score operator aoc_calc matches 3 run scoreboard players operation worry_level aoc_calc *= worry_level aoc_calc
scoreboard players operation worry_level aoc_calc /= worry_divisor aoc_calc

scoreboard players operation throw aoc_calc = worry_level aoc_calc
scoreboard players operation throw aoc_calc %= divisor aoc_calc

scoreboard players operation thrown_to aoc_calc = true aoc_calc
execute unless score throw aoc_calc matches 0 run scoreboard players operation thrown_to aoc_calc = false aoc_calc

execute store result storage aoc:calc item int 1 run scoreboard players get worry_level aoc_calc
function aoc_2022:logic/day_11/part_1/update_monkeys

data remove storage aoc:calc monkey.items[0]
execute if data storage aoc:calc monkey.items[-1] run function aoc_2022:logic/day_11/part_1/check_items
