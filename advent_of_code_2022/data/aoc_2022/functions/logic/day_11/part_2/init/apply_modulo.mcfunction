execute store result score div aoc_calc run data get storage aoc:calc temp_div[0]

scoreboard players operation mod aoc_calc = item aoc_calc
execute store result storage aoc:calc mod int 1 run scoreboard players operation mod aoc_calc %= div aoc_calc
data modify storage aoc:calc new_item append from storage aoc:calc mod

data remove storage aoc:calc temp_div[0]
execute if data storage aoc:calc temp_div[-1] run function aoc_2022:logic/day_11/part_2/init/apply_modulo
