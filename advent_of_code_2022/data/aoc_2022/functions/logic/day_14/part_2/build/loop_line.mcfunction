# draw point
forceload add ~ ~
setblock ~ ~ ~ light_gray_concrete

# get next pos
function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result entity @s Pos[0] double 1 run scoreboard players get num aoc_calc
scoreboard players operation x2 aoc_calc = num aoc_calc

function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result entity @s Pos[2] double 1 run scoreboard players get num aoc_calc
scoreboard players operation z2 aoc_calc = num aoc_calc

# draw line
execute if score z1 aoc_calc = z2 aoc_calc if score x1 aoc_calc < x2 aoc_calc positioned ~1 ~ ~ run function aoc_2022:logic/day_14/part_2/build/draw_line/posx
execute if score z1 aoc_calc = z2 aoc_calc if score x1 aoc_calc > x2 aoc_calc positioned ~-1 ~ ~ run function aoc_2022:logic/day_14/part_2/build/draw_line/negx
execute if score x1 aoc_calc = x2 aoc_calc if score z1 aoc_calc < z2 aoc_calc positioned ~ ~ ~1 run function aoc_2022:logic/day_14/part_2/build/draw_line/posz
execute if score x1 aoc_calc = x2 aoc_calc if score z1 aoc_calc > z2 aoc_calc positioned ~ ~ ~-1 run function aoc_2022:logic/day_14/part_2/build/draw_line/negz

scoreboard players operation max_z aoc_calc > z2 aoc_calc

# loop for all lines
execute if score next_string_length aoc_calc matches 1.. at @s run function aoc_2022:logic/day_14/part_2/build/loop_line
