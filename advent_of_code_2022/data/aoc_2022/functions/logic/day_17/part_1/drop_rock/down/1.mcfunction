# |...@...|
# |..@@@..|
# |...@...|

# get direction
function aoc_library:io/next_char
scoreboard players set dir aoc_calc 1
execute if data storage aoc:calc {next_char:"<"} run scoreboard players set dir aoc_calc -1
# refill vent directions
execute if score next_string_length aoc_calc matches 0 run function aoc_2022:logic/day_17/part_1/refill

# attempt move in that direction
execute if score dir aoc_calc matches -1 run function aoc_2022:logic/day_17/part_1/drop_rock/left/1
execute if score dir aoc_calc matches 1 run function aoc_2022:logic/day_17/part_1/drop_rock/right/1

# attempt move down
scoreboard players set blocked aoc_calc 1
scoreboard players operation rock_height2 aoc_calc = rock_height aoc_calc
scoreboard players remove rock_height aoc_calc 1
execute if score rock_pos aoc_calc matches 1 if score c1 aoc_calc < rock_height2 aoc_calc if score c2 aoc_calc < rock_height aoc_calc if score c3 aoc_calc < rock_height2 aoc_calc run scoreboard players set blocked aoc_calc 0
execute if score rock_pos aoc_calc matches 2 if score c2 aoc_calc < rock_height2 aoc_calc if score c3 aoc_calc < rock_height aoc_calc if score c4 aoc_calc < rock_height2 aoc_calc run scoreboard players set blocked aoc_calc 0
execute if score rock_pos aoc_calc matches 3 if score c3 aoc_calc < rock_height2 aoc_calc if score c4 aoc_calc < rock_height aoc_calc if score c5 aoc_calc < rock_height2 aoc_calc run scoreboard players set blocked aoc_calc 0
execute if score rock_pos aoc_calc matches 4 if score c4 aoc_calc < rock_height2 aoc_calc if score c5 aoc_calc < rock_height aoc_calc if score c6 aoc_calc < rock_height2 aoc_calc run scoreboard players set blocked aoc_calc 0
execute if score rock_pos aoc_calc matches 5 if score c5 aoc_calc < rock_height2 aoc_calc if score c6 aoc_calc < rock_height aoc_calc if score c7 aoc_calc < rock_height2 aoc_calc run scoreboard players set blocked aoc_calc 0

# place if it's at the bottom
execute if score blocked aoc_calc matches 1 run function aoc_2022:logic/day_17/part_1/drop_rock/place/1
# loop until it gets placed
execute if score blocked aoc_calc matches 0 run function aoc_2022:logic/day_17/part_1/drop_rock/down/1
