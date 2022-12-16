function aoc_library:io/next_string
function aoc_library:io/tokenize

# get sensor position
function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation x1 aoc_calc = num aoc_calc

function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation z1 aoc_calc = num aoc_calc

# get beacon position
function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
execute store result storage aoc:calc x int 1 run scoreboard players operation x2 aoc_calc = num aoc_calc

function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_library:io/token_to_int
scoreboard players operation z2 aoc_calc = num aoc_calc

# get manhattan distances
scoreboard players operation dx aoc_calc = x1 aoc_calc
scoreboard players operation dx aoc_calc > x2 aoc_calc
execute if score x1 aoc_calc < x2 aoc_calc run scoreboard players operation dx aoc_calc -= x1 aoc_calc
execute if score x1 aoc_calc >= x2 aoc_calc run scoreboard players operation dx aoc_calc -= x2 aoc_calc

scoreboard players operation dz aoc_calc = z1 aoc_calc
scoreboard players operation dz aoc_calc > z2 aoc_calc
execute if score z1 aoc_calc < z2 aoc_calc run scoreboard players operation dz aoc_calc -= z1 aoc_calc
execute if score z1 aoc_calc >= z2 aoc_calc run scoreboard players operation dz aoc_calc -= z2 aoc_calc

scoreboard players operation d aoc_calc = dx aoc_calc
scoreboard players operation d aoc_calc += dz aoc_calc

# get sensor dz from checked row
scoreboard players operation dz aoc_calc = checkz aoc_calc
scoreboard players operation dz aoc_calc > z1 aoc_calc
execute if score z1 aoc_calc < checkz aoc_calc run scoreboard players operation dz aoc_calc -= z1 aoc_calc
execute if score z1 aoc_calc >= checkz aoc_calc run scoreboard players operation dz aoc_calc -= checkz aoc_calc

# calculate radius for checked row
scoreboard players operation d aoc_calc -= dz aoc_calc

# mark area
execute if score d aoc_calc matches 0.. run function aoc_2022:logic/day_15/part_2/add_line/add_positions

# loop for all sensors
execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_15/part_2/add_line/loop
