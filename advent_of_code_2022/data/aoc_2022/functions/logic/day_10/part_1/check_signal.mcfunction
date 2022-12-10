scoreboard players operation next_pulse aoc_calc += pulse aoc_calc

scoreboard players operation add aoc_calc = cycle aoc_calc
scoreboard players operation add aoc_calc *= x aoc_calc
scoreboard players operation answer aoc_answer += add aoc_calc
