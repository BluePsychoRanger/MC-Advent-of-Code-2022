scoreboard players set answer aoc_answer 0
scoreboard players set checkz aoc_calc 2000000

data modify storage aoc:calc lines set value []
data modify storage aoc:calc beacons set value []
data modify storage aoc:library delimeters set value [":",",","="]
function aoc_2022:logic/day_15/part_1/loop
function aoc_2022:logic/day_15/part_1/add_total

function aoc_library:io/print_answer
