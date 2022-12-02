data modify storage bpr:aoc/library string1 set from storage bpr:aoc Input[-1][0]

data modify storage bpr:aoc/library string2 set value 'A'
function aoc_library:string/equals
execute if score eq bpr_aoc matches 1 run scoreboard players set val bpr_aoc 1

data modify storage bpr:aoc/library string2 set value 'B'
function aoc_library:string/equals
execute if score eq bpr_aoc matches 1 run scoreboard players set val bpr_aoc 2

data modify storage bpr:aoc/library string2 set value 'C'
function aoc_library:string/equals
execute if score eq bpr_aoc matches 1 run scoreboard players set val bpr_aoc 3

