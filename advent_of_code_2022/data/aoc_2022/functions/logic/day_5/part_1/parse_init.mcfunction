
function aoc_library:io/next_char

function aoc_library:io/next_char
data modify storage aoc:library char1 set from storage aoc:calc next_char
data modify storage aoc:library char2 set value " "
function aoc_library:char/equals

execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 1 run data modify storage aoc:calc boxes[1] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 2 run data modify storage aoc:calc boxes[2] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 3 run data modify storage aoc:calc boxes[3] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 4 run data modify storage aoc:calc boxes[4] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 5 run data modify storage aoc:calc boxes[5] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 6 run data modify storage aoc:calc boxes[6] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 7 run data modify storage aoc:calc boxes[7] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 8 run data modify storage aoc:calc boxes[8] prepend from storage aoc:calc next_char
execute unless score char_eq aoc_calc matches 1 if score column aoc_calc matches 9 run data modify storage aoc:calc boxes[9] prepend from storage aoc:calc next_char

function aoc_library:io/next_char
function aoc_library:io/next_char

scoreboard players add column aoc_calc 1
execute if score column aoc_calc matches ..9 run function aoc_2022:logic/day_5/part_1/parse_init
