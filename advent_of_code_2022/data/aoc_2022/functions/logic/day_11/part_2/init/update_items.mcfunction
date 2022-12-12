execute store result score item aoc_calc run data get storage aoc:calc monkey.items[0]
data modify storage aoc:calc temp_div set from storage aoc:calc divisors

data modify storage aoc:calc new_item set value []
function aoc_2022:logic/day_11/part_2/init/apply_modulo
data modify storage aoc:calc new_items append from storage aoc:calc new_item

data remove storage aoc:calc monkey.items[0]
execute if data storage aoc:calc monkey.items[-1] run function aoc_2022:logic/day_11/part_2/init/update_items
