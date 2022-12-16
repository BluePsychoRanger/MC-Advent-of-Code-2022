scoreboard players set found_beacon aoc_calc 1

execute store result score beacon_x aoc_calc run data get storage aoc:calc lines[0].x2
scoreboard players add beacon_x aoc_calc 1
scoreboard players operation beacon_z aoc_calc = checkz aoc_calc
