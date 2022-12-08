scoreboard players set answer aoc_answer 0
scoreboard players set column aoc_calc 1
scoreboard players set row aoc_calc 1
data modify storage aoc:calc boxes set value [[],[],[],[],[],[],[],[],[],[]]

function aoc_2022:logic/day_5/part_1/parse_init_row
function aoc_library:io/next_string
function aoc_library:io/next_string

function aoc_2022:logic/day_5/part_1/loop

scoreboard players set i_day5 aoc_calc 0
data modify storage aoc:library strings set value []
data modify storage aoc:calc temp_boxes set from storage aoc:calc boxes
function aoc_2022:logic/day_5/part_1/parse_output
scoreboard players set #type aoc_answer 2
function aoc_library:io/print_answer
