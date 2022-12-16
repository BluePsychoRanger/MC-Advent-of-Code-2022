scoreboard players set answer aoc_answer 0
scoreboard players set found_beacon aoc_calc 0
scoreboard players set check_min aoc_calc 0
scoreboard players set check_max aoc_calc 4000000
scoreboard players set checkz aoc_calc 0

data modify storage aoc:library delimeters set value [":",",","="]
data modify storage aoc:calc stored set from storage aoc:calc Input
scoreboard players operation stored aoc_calc = input_length aoc_calc

function aoc_2022:logic/day_15/part_2/loop

function aoc_library:io/print_answer
