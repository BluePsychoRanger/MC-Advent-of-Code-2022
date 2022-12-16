scoreboard players set in_list aoc_calc 0
data modify storage aoc:calc temp_beacons set from storage aoc:calc beacons
function aoc_2022:logic/day_15/part_1/check_beacons

execute if score in_list aoc_calc matches 0 run data modify storage aoc:calc beacons append from storage aoc:calc x
