scoreboard players set total bpr_aoc 0
scoreboard players set current_count bpr_aoc 0
data modify storage bpr:aoc stack_cnt set value []
# assume first two lines are cd / and ls
function aoc_library:io/next_string
function aoc_library:io/next_string

data modify storage bpr:aoc stored set from storage bpr:aoc Input
function aoc_2022:logic/day_7/part_2/first/loop
execute store result score stack_count bpr_aoc run data get storage bpr:aoc stack_cnt
execute if score stack_count bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_2/first/flush_stack

scoreboard players set val bpr_aoc 70000000
scoreboard players operation val bpr_aoc -= current_count bpr_aoc
scoreboard players set min bpr_aoc 30000000
scoreboard players operation min bpr_aoc -= val bpr_aoc

scoreboard players set current_count bpr_aoc 0
data modify storage bpr:aoc stack_cnt set value []
data modify storage bpr:aoc options set value []
data modify storage bpr:aoc Input set from storage bpr:aoc stored
execute store result score input_length bpr_aoc run data get storage bpr:aoc Input
function aoc_2022:logic/day_7/part_2/loop

execute store result score stack_count bpr_aoc run data get storage bpr:aoc stack_cnt
execute if score stack_count bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_2/flush_stack

execute store result score answer bpr_aoc_answers run data get storage bpr:aoc options[0]

function aoc_library:io/print_answer

data remove storage bpr:aoc stored
