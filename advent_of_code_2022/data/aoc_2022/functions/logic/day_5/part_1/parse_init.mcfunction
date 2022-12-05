
function aoc_library:io/next_char

function aoc_library:io/next_char
data modify storage bpr:aoc/library char1 set from storage bpr:aoc next_char
data modify storage bpr:aoc/library char2 set value " "
function aoc_library:char/equals

execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 1 run data modify storage bpr:aoc boxes[1] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 2 run data modify storage bpr:aoc boxes[2] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 3 run data modify storage bpr:aoc boxes[3] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 4 run data modify storage bpr:aoc boxes[4] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 5 run data modify storage bpr:aoc boxes[5] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 6 run data modify storage bpr:aoc boxes[6] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 7 run data modify storage bpr:aoc boxes[7] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 8 run data modify storage bpr:aoc boxes[8] prepend from storage bpr:aoc next_char
execute unless score char_eq bpr_aoc matches 1 if score column bpr_aoc matches 9 run data modify storage bpr:aoc boxes[9] prepend from storage bpr:aoc next_char

function aoc_library:io/next_char
function aoc_library:io/next_char

scoreboard players add column bpr_aoc 1
execute if score column bpr_aoc matches ..9 run function aoc_2022:logic/day_5/part_1/parse_init
