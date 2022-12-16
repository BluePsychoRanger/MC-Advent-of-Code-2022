scoreboard players operation checkx aoc_calc = x1 aoc_calc
scoreboard players operation checkx aoc_calc -= d aoc_calc
scoreboard players operation _x1 aoc_calc = checkx aoc_calc

scoreboard players operation checkx aoc_calc = x1 aoc_calc
scoreboard players operation checkx aoc_calc += d aoc_calc
scoreboard players operation x2 aoc_calc = checkx aoc_calc

scoreboard players operation x1 aoc_calc = _x1 aoc_calc

scoreboard players operation x1 aoc_calc > check_min aoc_calc
scoreboard players operation x2 aoc_calc < check_max aoc_calc

# get sorted position
data merge storage aoc:calc {lines_tail:[]}
execute store result score lines aoc_calc run data get storage aoc:calc lines
function aoc_2022:logic/day_15/part_2/add_line/check_next
data merge storage aoc:calc {line:{x1:0,x2:0}}
execute store result storage aoc:calc line.x1 int 1 run scoreboard players get x1 aoc_calc
execute store result storage aoc:calc line.x2 int 1 run scoreboard players get x2 aoc_calc

# update list
data modify storage aoc:calc lines append from storage aoc:calc line
data modify storage aoc:calc lines append from storage aoc:calc lines_tail[]
