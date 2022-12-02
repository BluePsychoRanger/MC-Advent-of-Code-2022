data modify storage bpr:aoc/library string1 set from storage bpr:aoc Input[-1][2]

data modify storage bpr:aoc/library string2 set value 'X'
function aoc_library:string/equals
execute if score eq bpr_aoc matches 1 run function aoc_2022:logic/day_2/answer_1/check_out/rock

data modify storage bpr:aoc/library string2 set value 'Y'
function aoc_library:string/equals
execute if score eq bpr_aoc matches 1 run function aoc_2022:logic/day_2/answer_1/check_out/paper

data modify storage bpr:aoc/library string2 set value 'Z'
function aoc_library:string/equals
execute if score eq bpr_aoc matches 1 run function aoc_2022:logic/day_2/answer_1/check_out/scissors

