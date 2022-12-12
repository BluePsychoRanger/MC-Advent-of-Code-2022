scoreboard players set monkey aoc_calc 0
function aoc_2022:logic/day_11/part_1/monkey_inspect

# data modify storage aoc:calc monkeys set from storage aoc:calc new_monkeys
scoreboard players remove rounds aoc_calc 1
execute if score rounds aoc_calc matches 1.. run function aoc_2022:logic/day_11/part_1/rounds
