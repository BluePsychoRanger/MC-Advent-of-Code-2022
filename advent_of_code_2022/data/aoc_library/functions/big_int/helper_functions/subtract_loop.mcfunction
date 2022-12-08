# get next digit
execute store result score digit1 aoc_calc run data get storage aoc:library big_int1_temp[-1]
execute store result score digit2 aoc_calc run data get storage aoc:library big_int2_temp[-1]

# get difference
scoreboard players operation digit1 aoc_calc += carry_over aoc_calc
scoreboard players set carry_over aoc_calc 0
execute if score digit1 aoc_calc < digit2 aoc_calc run scoreboard players set carry_over aoc_calc -1
execute if score digit1 aoc_calc < digit2 aoc_calc run scoreboard players add digit1 aoc_calc 10
execute store result storage aoc:library digit int 1 run scoreboard players operation digit1 aoc_calc -= digit2 aoc_calc

# add to final value
data modify storage aoc:library big_int prepend from storage aoc:library digit
data remove storage aoc:library digit

# clear digit
scoreboard players remove big_int1_length aoc_calc 1
scoreboard players remove big_int2_length aoc_calc 1
data remove storage aoc:library big_int1_temp[-1]
data remove storage aoc:library big_int2_temp[-1]

# fill other array with 0 if both aren't empty
execute if score big_int1_length aoc_calc matches ..0 unless score big_int2_length aoc_calc matches ..0 run tellraw @a ["",{"text":"[ERROR] ","color":"dark_red"},{"text":"[big_int1] must be greater than [big_int2]","color":"red"},{"text":" ...aoc_library:functions/big_int/subtract (line 22)","color":"aqua"}]
execute if score big_int2_length aoc_calc matches ..0 unless score big_int1_length aoc_calc matches ..0 run data modify storage aoc:library big_int2_temp append value 0

# final carry over
execute if score big_int1_length aoc_calc matches ..0 if score big_int2_length aoc_calc matches ..0 if score carry_over aoc_calc matches -1 run tellraw @a ["",{"text":"[ERROR] ","color":"dark_red"},{"text":"[big_int1] must be greater than [big_int2]","color":"red"},{"text":" ...aoc_library:functions/big_int/subtract (line 26)","color":"aqua"}]
execute if score big_int1_length aoc_calc matches ..0 if score big_int2_length aoc_calc matches ..0 if score carry_over aoc_calc matches -1 run scoreboard players set num_invalid aoc_calc 1
# loop until both arrays are empty
scoreboard players set cont aoc_calc 0
execute if score big_int1_length aoc_calc matches 1.. run scoreboard players set cont aoc_calc 1
execute if score big_int2_length aoc_calc matches 1.. run scoreboard players set cont aoc_calc 1

execute if score cont aoc_calc matches 1 run function aoc_library:big_int/helper_functions/subtract_loop
