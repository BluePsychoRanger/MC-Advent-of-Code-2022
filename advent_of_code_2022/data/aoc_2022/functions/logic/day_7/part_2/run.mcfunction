scoreboard players set total aoc_calc 0
scoreboard players set current_count aoc_calc 0
data modify storage aoc:calc stack_cnt set value []
# assume first two lines are cd / and ls
function aoc_library:io/next_string
function aoc_library:io/next_string

data modify storage aoc:calc stored set from storage aoc:calc Input
function aoc_2022:logic/day_7/part_2/first/loop
execute store result score stack_count aoc_calc run data get storage aoc:calc stack_cnt
execute if score stack_count aoc_calc matches 1.. run function aoc_2022:logic/day_7/part_2/first/flush_stack

scoreboard players set val aoc_calc 70000000
scoreboard players operation val aoc_calc -= current_count aoc_calc
scoreboard players set min aoc_calc 30000000
scoreboard players operation min aoc_calc -= val aoc_calc

scoreboard players set current_count aoc_calc 0
data modify storage aoc:calc stack_cnt set value []
data modify storage aoc:calc options set value []
data modify storage aoc:calc Input set from storage aoc:calc stored
execute store result score input_length aoc_calc run data get storage aoc:calc Input
function aoc_2022:logic/day_7/part_2/loop

execute store result score stack_count aoc_calc run data get storage aoc:calc stack_cnt
execute if score stack_count aoc_calc matches 1.. run function aoc_2022:logic/day_7/part_2/flush_stack

execute store result score answer aoc_answer run data get storage aoc:calc options[0]

function aoc_library:io/print_answer

data remove storage aoc:calc stored
