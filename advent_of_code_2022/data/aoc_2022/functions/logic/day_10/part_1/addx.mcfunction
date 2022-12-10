scoreboard players add cycle aoc_calc 1
execute if score cycle aoc_calc = next_pulse aoc_calc run function aoc_2022:logic/day_10/part_1/check_signal

scoreboard players operation x aoc_calc += num aoc_calc
