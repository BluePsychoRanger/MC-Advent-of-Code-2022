

function aoc_library:io/next_string

data modify storage bpr:aoc/library delimeters set value [" "]
function aoc_library:io/tokenize


# 0: file (if all other checks failed)
scoreboard players set op bpr_aoc 0
# 1: $ cd
data modify storage bpr:aoc/library string1 set from storage bpr:aoc next_string[1]
data modify storage bpr:aoc/library string2 set value ["c","d"]
function aoc_library:string/equals
execute if score string_eq bpr_aoc matches 1 run scoreboard players set op bpr_aoc 1
# 2: $ ls
execute if score string_eq bpr_aoc matches 0 run data modify storage bpr:aoc/library string2 set value ["l","s"]
execute if score string_eq bpr_aoc matches 0 run function aoc_library:string/equals
execute unless score op bpr_aoc matches 0.. if score string_eq bpr_aoc matches 1 run scoreboard players set op bpr_aoc 2
# 3: dir
execute if score string_eq bpr_aoc matches 0 run data modify storage bpr:aoc/library string1 set from storage bpr:aoc next_string[0]
execute if score string_eq bpr_aoc matches 0 run data modify storage bpr:aoc/library string2 set value ["d","i","r"]
execute if score string_eq bpr_aoc matches 0 run function aoc_library:string/equals
execute unless score op bpr_aoc matches 0.. if score string_eq bpr_aoc matches 1 run scoreboard players set op bpr_aoc 3

# ls and dir are ignored
execute if score op bpr_aoc matches 0 run function aoc_2022:logic/day_7/part_2/add_file
execute if score op bpr_aoc matches 1 run function aoc_2022:logic/day_7/part_2/change_dir

execute if score input_length bpr_aoc matches 1.. run function aoc_2022:logic/day_7/part_2/loop
