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

function aoc_2022:logic/day_7/part_1/loop

execute store result score stack_count bpr_aoc run data get storage bpr:aoc stack_cnt
execute if score stack_count bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_1/flush_stack

data modify storage bpr:aoc/library big_int set from storage bpr:aoc total
scoreboard players set #type bpr_aoc_answers 1
function aoc_library:io/print_answer
data remove storage bpr:aoc/library list
