# get first pos
function aoc_library:io/next_string
function aoc_library:io/tokenize

function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result entity @s Pos[0] double 1 run scoreboard players get num aoc_calc

function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result entity @s Pos[1] double 1 run scoreboard players get num aoc_calc

function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result entity @s Pos[2] double 1 run scoreboard players get num aoc_calc

# place block
execute at @s run forceload add ~ ~
execute at @s run setblock ~ ~ ~ orange_concrete
execute at @s run summon marker ~ ~ ~ {Tags:["aoc_droplet"]}

# loop for blocks
execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_18/part_2/build
