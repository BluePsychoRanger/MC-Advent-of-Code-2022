# find matching chars for first two lines
function aoc_library:io/next_string
data modify storage bpr:aoc/library string1 set from storage bpr:aoc next_string
function aoc_library:io/next_string
data modify storage bpr:aoc/library string2 set from storage bpr:aoc next_string
function aoc_library:string/intersection

# find matching chars for third line
data modify storage bpr:aoc/library string1 set from storage bpr:aoc/library intersections
function aoc_library:io/next_string
data modify storage bpr:aoc/library string2 set from storage bpr:aoc next_string
function aoc_library:string/intersection

# convert char to ascii value
data modify storage bpr:aoc/library char set from storage bpr:aoc/library intersections[-1]
function aoc_library:char/to_ascii

# add proper value to answer
scoreboard players operation add bpr_aoc = num bpr_aoc
execute if score num bpr_aoc matches 65..90 run scoreboard players remove add bpr_aoc 38
execute if score num bpr_aoc matches 97..122 run scoreboard players remove add bpr_aoc 95
scoreboard players operation answer bpr_aoc_answers += add bpr_aoc

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_3/part_2/loop
