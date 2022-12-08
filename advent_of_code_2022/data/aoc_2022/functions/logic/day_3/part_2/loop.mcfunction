# find matching chars for first two lines
function aoc_library:io/next_string
data modify storage aoc:library string1 set from storage aoc:calc next_string
function aoc_library:io/next_string
data modify storage aoc:library string2 set from storage aoc:calc next_string
function aoc_library:string/intersection

# find matching chars for third line
data modify storage aoc:library string1 set from storage aoc:library intersections
function aoc_library:io/next_string
data modify storage aoc:library string2 set from storage aoc:calc next_string
function aoc_library:string/intersection

# convert char to ascii value
data modify storage aoc:library char set from storage aoc:library intersections[-1]
function aoc_library:char/to_ascii

# add proper value to answer
scoreboard players operation add aoc_calc = num aoc_calc
execute if score num aoc_calc matches 65..90 run scoreboard players remove add aoc_calc 38
execute if score num aoc_calc matches 97..122 run scoreboard players remove add aoc_calc 95
scoreboard players operation answer aoc_answer += add aoc_calc

execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_3/part_2/loop
