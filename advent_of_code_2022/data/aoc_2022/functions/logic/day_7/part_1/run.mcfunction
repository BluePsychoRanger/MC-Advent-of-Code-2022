scoreboard players set answer aoc_answer 0
scoreboard players set current_count aoc_calc 0
data modify storage aoc:calc stack_cnt set value []
# assume first two lines are cd / and ls
function aoc_library:io/next_string
function aoc_library:io/next_string

function aoc_2022:logic/day_7/part_1/loop

execute store result score stack_count aoc_calc run data get storage aoc:calc stack_cnt
execute if score stack_count aoc_calc matches 1.. run function aoc_2022:logic/day_7/part_1/flush_stack

function aoc_library:io/print_answer
