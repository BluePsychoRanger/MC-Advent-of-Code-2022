# check double digits
scoreboard players operation n aoc_calc = num aoc_calc
data modify storage aoc:library char set from storage aoc:calc next_string[0]
function aoc_library:char/to_int

execute unless score num_invalid aoc_calc matches 1 run data remove storage aoc:calc next_string[0]
execute unless score num_invalid aoc_calc matches 1 run scoreboard players remove next_string_length aoc_calc 1
execute unless score num_invalid aoc_calc matches 1 run scoreboard players operation n aoc_calc *= 10 aoc_const
execute unless score num_invalid aoc_calc matches 1 run scoreboard players operation n aoc_calc += num aoc_calc

# save value
data merge storage aoc:calc {val:[]}
execute store result storage aoc:calc num int 1 run scoreboard players get n aoc_calc
data modify storage aoc:calc val append from storage aoc:calc num
data modify storage aoc:calc parsed append from storage aoc:calc val
