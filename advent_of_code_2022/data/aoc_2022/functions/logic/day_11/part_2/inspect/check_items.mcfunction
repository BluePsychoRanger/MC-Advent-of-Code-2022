data merge storage aoc:calc {item_head:[]}
scoreboard players set check_monkey aoc_calc 0
scoreboard players operation desired aoc_calc = monkey aoc_calc
execute unless score monkey aoc_calc matches 0 run function aoc_2022:logic/day_11/part_2/inspect/find_matching_item

execute store result score worry_level aoc_calc run data get storage aoc:calc monkey.items[0][0]
data modify storage aoc:calc monkey.items[0] prepend from storage aoc:calc item_head[]


execute if score operator aoc_calc matches 1 run scoreboard players operation worry_level aoc_calc *= mod_operand aoc_calc
execute if score operator aoc_calc matches 2 run scoreboard players operation worry_level aoc_calc += mod_operand aoc_calc
execute if score operator aoc_calc matches 3 run scoreboard players operation worry_level aoc_calc *= worry_level aoc_calc


scoreboard players operation throw aoc_calc = worry_level aoc_calc
scoreboard players operation throw aoc_calc %= divisor aoc_calc

scoreboard players operation thrown_to aoc_calc = false aoc_calc
execute if score throw aoc_calc matches 0 run scoreboard players operation thrown_to aoc_calc = true aoc_calc


data modify storage aoc:calc item set value []
data modify storage aoc:calc temp_div set from storage aoc:calc divisors
scoreboard players set next_item aoc_calc 0
function aoc_2022:logic/day_11/part_2/inspect/apply_modulo


execute store result storage aoc:calc monkey.inspected int 1 run scoreboard players add inspected aoc_calc 1
function aoc_2022:logic/day_11/part_2/inspect/update_monkeys


data remove storage aoc:calc monkey.items[0]
execute if data storage aoc:calc monkey.items[-1] run function aoc_2022:logic/day_11/part_2/inspect/check_items
