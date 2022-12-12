execute store result score div aoc_calc run data get storage aoc:calc temp_div[0]


data merge storage aoc:calc {item_head:[]}
scoreboard players set check_monkey aoc_calc 0
scoreboard players operation desired aoc_calc = next_item aoc_calc
execute unless score desired aoc_calc matches 0 run function aoc_2022:logic/day_11/part_2/inspect/find_matching_item

execute store result score item aoc_calc run data get storage aoc:calc monkey.items[0][0]
data modify storage aoc:calc monkey.items[0] prepend from storage aoc:calc item_head[]


execute if score operator aoc_calc matches 1 run scoreboard players operation item aoc_calc *= operand aoc_calc
execute if score operator aoc_calc matches 2 run scoreboard players operation item aoc_calc += operand aoc_calc
execute if score operator aoc_calc matches 3 run scoreboard players operation item aoc_calc *= item aoc_calc


scoreboard players operation mod aoc_calc = item aoc_calc
execute store result storage aoc:calc mod int 1 run scoreboard players operation mod aoc_calc %= div aoc_calc
data modify storage aoc:calc item append from storage aoc:calc mod

scoreboard players add next_item aoc_calc 1
data remove storage aoc:calc temp_div[0]
execute if score next_item aoc_calc < monkeys aoc_calc run function aoc_2022:logic/day_11/part_2/inspect/apply_modulo
