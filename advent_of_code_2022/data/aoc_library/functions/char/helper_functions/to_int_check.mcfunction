# compare char to next value
execute store success score not_eq aoc_calc run data modify storage aoc:library chars[-1] set from storage aoc:library char

# loop for all values
scoreboard players remove num aoc_calc 1
data remove storage aoc:library chars[-1]
execute if score num aoc_calc > char_last aoc_calc if score not_eq aoc_calc matches 1 run function aoc_library:char/helper_functions/to_int_check
