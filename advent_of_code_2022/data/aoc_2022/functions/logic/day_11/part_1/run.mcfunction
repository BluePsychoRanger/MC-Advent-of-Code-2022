scoreboard players set answer aoc_answer 0

data modify storage aoc:calc monkeys set value []
data modify storage aoc:library delimeters set value [" ",","]

function aoc_2022:logic/day_11/part_1/init_monkeys

scoreboard players set worry_divisor aoc_calc 3
scoreboard players set rounds aoc_calc 20
execute store result score monkeys aoc_calc run data get storage aoc:calc monkeys
function aoc_2022:logic/day_11/part_1/rounds

scoreboard players set max1 aoc_calc 0
scoreboard players set max2 aoc_calc 0
scoreboard players set monkey aoc_calc 0
data modify storage aoc:calc temp_monkeys set from storage aoc:calc monkeys
function aoc_2022:logic/day_11/part_1/count_monkeys

scoreboard players operation answer aoc_answer = max1 aoc_calc
scoreboard players operation answer aoc_answer *= max2 aoc_calc

function aoc_library:io/print_answer
