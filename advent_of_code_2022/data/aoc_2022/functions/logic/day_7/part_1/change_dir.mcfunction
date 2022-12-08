
scoreboard players set op_1 aoc_calc 0
data modify storage aoc:library string1 set from storage aoc:calc next_string[2]
data modify storage aoc:library string2 set value [".","."]
function aoc_library:string/equals
execute if score string_eq aoc_calc matches 1 run scoreboard players set op_1 aoc_calc 1

# 0: move in
execute if score op_1 aoc_calc matches 0 run function aoc_2022:logic/day_7/part_1/cd_subdir
# 1: move out
execute if score op_1 aoc_calc matches 1 run function aoc_2022:logic/day_7/part_1/cd_root
