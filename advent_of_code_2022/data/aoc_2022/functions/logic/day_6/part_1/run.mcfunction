scoreboard players set answer bpr_aoc_answers 3
data modify storage bpr:aoc buffer set value []

function aoc_library:io/reverse
function aoc_library:io/next_string

scoreboard players set init_buffer bpr_aoc 3
function aoc_2022:logic/day_6/part_1/init_buffer

function aoc_2022:logic/day_6/part_1/loop
function aoc_library:io/print_answer
data remove storage bpr:aoc/library list
