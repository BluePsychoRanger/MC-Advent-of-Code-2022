execute store result score checkx aoc_calc run data get storage aoc:calc temp_beacons[-1]
execute if score x2 aoc_calc = checkx aoc_calc run scoreboard players set in_list aoc_calc 1

data remove storage aoc:calc temp_beacons[-1]
execute if score in_list aoc_calc matches 0 if data storage aoc:calc temp_beacons[-1] run function aoc_2022:logic/day_15/part_1/check_beacons
