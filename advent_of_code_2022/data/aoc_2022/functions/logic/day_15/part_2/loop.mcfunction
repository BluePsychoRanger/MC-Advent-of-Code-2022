data modify storage aoc:calc Input set from storage aoc:calc stored
scoreboard players operation input_length aoc_calc = stored aoc_calc

data modify storage aoc:calc lines set value []
function aoc_2022:logic/day_15/part_2/add_line/loop

execute if data storage aoc:calc lines[1] run function aoc_2022:logic/day_15/part_2/find_beacon

# loop for all rows
scoreboard players add checkz aoc_calc 1
execute if score found_beacon aoc_calc matches 0 if score checkz aoc_calc < check_max aoc_calc run function aoc_2022:logic/day_15/part_2/loop
