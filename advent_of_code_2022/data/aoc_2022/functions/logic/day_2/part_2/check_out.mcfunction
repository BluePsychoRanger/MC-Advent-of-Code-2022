data modify storage bpr:aoc/library string1 set from storage bpr:aoc Input[-1][0]

data modify storage bpr:aoc/library string2 set value 'A'
function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run function aoc_2022:logic/day_2/part_2/check_out/rock

data modify storage bpr:aoc/library string2 set value 'B'
function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run function aoc_2022:logic/day_2/part_2/check_out/paper

data modify storage bpr:aoc/library string2 set value 'C'
function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run function aoc_2022:logic/day_2/part_2/check_out/scissors

