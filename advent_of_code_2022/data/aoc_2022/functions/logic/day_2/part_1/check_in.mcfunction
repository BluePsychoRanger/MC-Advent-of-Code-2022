data modify storage aoc:library string1 set from storage aoc:calc next_string[0]

data modify storage aoc:library string2 set value 'A'
function aoc_library:string/equals
execute if score string_eq aoc_calc matches 1 run scoreboard players set val aoc_calc 1

data modify storage aoc:library string2 set value 'B'
function aoc_library:string/equals
execute if score string_eq aoc_calc matches 1 run scoreboard players set val aoc_calc 2

data modify storage aoc:library string2 set value 'C'
function aoc_library:string/equals
execute if score string_eq aoc_calc matches 1 run scoreboard players set val aoc_calc 3

