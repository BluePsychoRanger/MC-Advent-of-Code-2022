execute store result score x1 aoc_calc run data get storage aoc:calc lines[-1].x1
execute store result score x2 aoc_calc run data get storage aoc:calc lines[-1].x2

data merge storage aoc:calc {new_beacons:[]}
data modify storage aoc:calc temp_beacons set from storage aoc:calc beacons
function aoc_2022:logic/day_15/part_1/subtract_beacons
data modify storage aoc:calc beacons set from storage aoc:calc new_beacons

scoreboard players operation x2 aoc_calc -= x1 aoc_calc
scoreboard players add x2 aoc_calc 1
scoreboard players operation answer aoc_answer += x2 aoc_calc

data remove storage aoc:calc lines[-1]
execute if data storage aoc:calc lines[-1] run function aoc_2022:logic/day_15/part_1/add_total
