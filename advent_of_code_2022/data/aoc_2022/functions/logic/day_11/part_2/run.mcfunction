scoreboard players set answer aoc_answer 0

data modify storage aoc:library delimeters set value [" ",","]
data modify storage aoc:calc monkeys set value []
data modify storage aoc:calc divisors set value []

function aoc_2022:logic/day_11/part_2/init/monkeys
execute store result score monkeys aoc_calc run data get storage aoc:calc monkeys

scoreboard players set monkey aoc_calc 0
data modify storage aoc:calc new_monkeys set value []
function aoc_2022:logic/day_11/part_2/init/update_monkeys
data modify storage aoc:calc monkeys set from storage aoc:calc new_monkeys

scoreboard players set rounds aoc_calc 10000
function aoc_2022:logic/day_11/part_2/rounds

scoreboard players set max1 aoc_calc 0
scoreboard players set max2 aoc_calc 0
scoreboard players set monkey aoc_calc 0
data modify storage aoc:calc temp_monkeys set from storage aoc:calc monkeys
function aoc_2022:logic/day_11/part_2/count_monkeys

scoreboard players operation answer aoc_answer = max1 aoc_calc
scoreboard players operation answer aoc_answer *= max2 aoc_calc

function aoc_library:io/print_answer
