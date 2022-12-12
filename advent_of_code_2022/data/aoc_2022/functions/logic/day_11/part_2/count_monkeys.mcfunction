execute store result score total aoc_calc run data get storage aoc:calc temp_monkeys[0].inspected

scoreboard players operation max2 aoc_calc > total aoc_calc
execute if score max2 aoc_calc > max1 aoc_calc run scoreboard players operation max2 aoc_calc >< max1 aoc_calc

# loop for all monkeys
data remove storage aoc:calc temp_monkeys[0]
scoreboard players add monkey aoc_calc 1
execute if score monkey aoc_calc < monkeys aoc_calc run function aoc_2022:logic/day_11/part_2/count_monkeys
