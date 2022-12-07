scoreboard players set answer bpr_aoc_answers 0
scoreboard players set column bpr_aoc 1
scoreboard players set row bpr_aoc 1
data modify storage bpr:aoc boxes set value [[],[],[],[],[],[],[],[],[],[]]

function aoc_2022:logic/day_5/part_1/parse_init_row
function aoc_library:io/next_string
function aoc_library:io/next_string

function aoc_2022:logic/day_5/part_1/loop

scoreboard players set i_day5 bpr_aoc 0
data modify storage bpr:aoc/library strings set value []
data modify storage bpr:aoc temp_boxes set from storage bpr:aoc boxes
function aoc_2022:logic/day_5/part_1/parse_output
scoreboard players set #type bpr_aoc_answers 2
function aoc_library:io/print_answer
