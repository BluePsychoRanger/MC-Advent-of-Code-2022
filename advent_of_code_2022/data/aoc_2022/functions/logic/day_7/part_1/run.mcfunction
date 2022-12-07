scoreboard players set answer bpr_aoc_answers 0
scoreboard players set current_count bpr_aoc 0
data modify storage bpr:aoc stack_cnt set value []
# assume first two lines are cd / and ls
function aoc_library:io/next_string
function aoc_library:io/next_string

function aoc_2022:logic/day_7/part_1/loop

execute store result score stack_count bpr_aoc run data get storage bpr:aoc stack_cnt
execute if score stack_count bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_1/flush_stack

function aoc_library:io/print_answer
