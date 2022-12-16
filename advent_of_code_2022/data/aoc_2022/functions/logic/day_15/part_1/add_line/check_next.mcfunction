# get next pos
execute store result score check1 aoc_calc run data get storage aoc:calc lines[-1].x1
execute store result score check2 aoc_calc run data get storage aoc:calc lines[-1].x2

# merge if needed (overlap)
scoreboard players set replace aoc_calc 0
execute if score x2 aoc_calc >= check1 aoc_calc if score x1 aoc_calc <= check2 aoc_calc run function aoc_2022:logic/day_15/part_1/add_line/merge
execute if score check2 aoc_calc >= x1 aoc_calc if score check1 aoc_calc <= x2 aoc_calc run function aoc_2022:logic/day_15/part_1/add_line/merge

# if merge happened, check next element for overlap
execute if score replace aoc_calc matches 1 run data remove storage aoc:calc lines[-1]
execute if score replace aoc_calc matches 1 run scoreboard players remove lines aoc_calc 1
execute if score replace aoc_calc matches 1 if score lines aoc_calc matches 1.. run function aoc_2022:logic/day_15/part_1/add_line/check_next

# else sort
execute if score replace aoc_calc matches 0 if score check1 aoc_calc > x2 aoc_calc run function aoc_2022:logic/day_15/part_1/add_line/find_next
