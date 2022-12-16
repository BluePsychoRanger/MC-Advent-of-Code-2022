execute store result score checkx aoc_calc run data get storage aoc:calc temp_beacons[-1]
scoreboard players set found_beacon aoc_calc 0
execute if score x2 aoc_calc >= checkx aoc_calc if score x1 aoc_calc <= checkx aoc_calc run scoreboard players set found_beacon aoc_calc 1

execute if score found_beacon aoc_calc matches 1 run scoreboard players remove answer aoc_answer 1
execute if score found_beacon aoc_calc matches 0 run data modify storage aoc:calc new_beacons append from storage aoc:calc temp_beacons[-1]

data remove storage aoc:calc temp_beacons[-1]
execute if data storage aoc:calc temp_beacons[-1] run function aoc_2022:logic/day_15/part_1/check_beacons
