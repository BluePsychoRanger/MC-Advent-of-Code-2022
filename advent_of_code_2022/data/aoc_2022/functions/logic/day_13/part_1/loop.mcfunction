scoreboard players add index aoc_calc 1

data merge storage aoc:calc {stack:[]}
function aoc_library:io/next_string
data merge storage aoc:calc {parsed:[]}
scoreboard players set i_day13 aoc_calc 0
function aoc_2022:logic/day_13/part_1/parse
data modify storage aoc:calc packet1 set from storage aoc:calc parsed[-1]

data merge storage aoc:calc {stack:[]}
function aoc_library:io/next_string
data merge storage aoc:calc {parsed:[]}
scoreboard players set i_day13 aoc_calc 0
function aoc_2022:logic/day_13/part_1/parse
data modify storage aoc:calc packet2 set from storage aoc:calc parsed[-1]

data merge storage aoc:calc {stack:[]}
scoreboard players set correct aoc_calc -1
function aoc_2022:logic/day_13/part_1/compare
execute if score correct aoc_calc matches 1 run scoreboard players operation answer aoc_answer += index aoc_calc
tellraw @a ["correct: ",{"score":{"name":"correct","objective": "aoc_calc"}},"  index: ",{"score":{"name":"index","objective": "aoc_calc"}}]

# loop
function aoc_library:io/next_string
#execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_13/part_1/loop
