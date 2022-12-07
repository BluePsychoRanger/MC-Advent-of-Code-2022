scoreboard players set answer bpr_aoc_answers 0
# data modify storage bpr:aoc filesystem set value [{id:["/"],count:[0],subdirs:[],roots:[]}]
#                                                      str    big_int   list(str) list(str)

function aoc_library:io/reverse


scoreboard players set current_count bpr_aoc 0
data modify storage bpr:aoc total set value [0]
data modify storage bpr:aoc current_count set value [0]
data modify storage bpr:aoc stack_cnt set value []
# assume first two lines are cd / and ls
function aoc_library:io/next_string
function aoc_library:io/next_string

data modify storage bpr:aoc stored set from storage bpr:aoc Input
function aoc_2022:logic/day_7/part_2/first/loop
execute store result score stack_count bpr_aoc run data get storage bpr:aoc stack_cnt
execute if score stack_count bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_2/first/flush_stack


data modify storage bpr:aoc/library big_int1 set value [7,0,0,0,0,0,0,0]
data modify storage bpr:aoc/library big_int2 set from storage bpr:aoc/library big_int
function aoc_library:big_int/subtract
data modify storage bpr:aoc/library big_int1 set value [3,0,0,0,0,0,0,0]
data modify storage bpr:aoc/library big_int2 set from storage bpr:aoc/library big_int
function aoc_library:big_int/subtract

data modify storage bpr:aoc min set from storage bpr:aoc/library big_int


scoreboard players set current_count bpr_aoc 0
data modify storage bpr:aoc total set value [0]
data modify storage bpr:aoc current_count set value [0]
data modify storage bpr:aoc stack_cnt set value []
data modify storage bpr:aoc options set value []
data modify storage bpr:aoc Input set from storage bpr:aoc stored
execute store result score input_length bpr_aoc run data get storage bpr:aoc Input
function aoc_2022:logic/day_7/part_2/loop

execute store result score stack_count bpr_aoc run data get storage bpr:aoc stack_cnt
execute if score stack_count bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_2/flush_stack



data modify storage bpr:aoc/library big_int set from storage bpr:aoc total
scoreboard players set #type bpr_aoc_answers 1
function aoc_library:io/print_answer

data remove storage bpr:aoc stored
data remove storage bpr:aoc/library list
