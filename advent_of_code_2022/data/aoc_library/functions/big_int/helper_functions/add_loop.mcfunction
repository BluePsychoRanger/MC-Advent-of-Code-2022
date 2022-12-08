# get next digits
execute store result score digit1 aoc_calc run data get storage aoc:library big_int1_temp[-1]
execute store result score digit2 aoc_calc run data get storage aoc:library big_int2_temp[-1]

# get sum
scoreboard players operation digit1 aoc_calc += digit2 aoc_calc
scoreboard players operation digit1 aoc_calc += carry_over aoc_calc
# check if over 10
scoreboard players operation carry_over aoc_calc = digit1 aoc_calc
scoreboard players operation carry_over aoc_calc /= 10 aoc_const
# get rid of carry_over
execute store result storage aoc:library digit int 1 run scoreboard players operation digit1 aoc_calc %= 10 aoc_const

# add to final value
data modify storage aoc:library big_int prepend from storage aoc:library digit
data remove storage aoc:library digit

# clear digit
scoreboard players remove big_int1_length aoc_calc 1
scoreboard players remove big_int2_length aoc_calc 1
data remove storage aoc:library big_int1_temp[-1]
data remove storage aoc:library big_int2_temp[-1]

# fill other array with 0 if both aren't empty
execute if score big_int1_length aoc_calc matches ..0 unless score big_int2_length aoc_calc matches ..0 run data modify storage aoc:library big_int1_temp append value 0
execute if score big_int2_length aoc_calc matches ..0 unless score big_int1_length aoc_calc matches ..0 run data modify storage aoc:library big_int2_temp append value 0

# final carry over
execute if score big_int1_length aoc_calc matches ..0 if score big_int2_length aoc_calc matches ..0 if score carry_over aoc_calc matches 1 run data modify storage aoc:library big_int prepend value 1
# loop until both arrays are empty
scoreboard players set cont aoc_calc 0
execute if score big_int1_length aoc_calc matches 1.. run scoreboard players set cont aoc_calc 1
execute if score big_int2_length aoc_calc matches 1.. run scoreboard players set cont aoc_calc 1

execute if score cont aoc_calc matches 1 run function aoc_library:big_int/helper_functions/add_loop
