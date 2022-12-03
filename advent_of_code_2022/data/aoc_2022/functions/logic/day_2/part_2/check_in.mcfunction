data modify storage bpr:aoc/library string1 set from storage bpr:aoc Input[-1][2]

data modify storage bpr:aoc/library string2 set value 'X'
function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run scoreboard players set val bpr_aoc 1

data modify storage bpr:aoc/library string2 set value 'Y'
function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run scoreboard players set val bpr_aoc 2

data modify storage bpr:aoc/library string2 set value 'Z'
function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run scoreboard players set val bpr_aoc 3

