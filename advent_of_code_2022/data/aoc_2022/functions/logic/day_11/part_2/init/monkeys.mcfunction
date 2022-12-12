data modify storage aoc:calc monkey set value {items:[],operand:1,operator:1,divisor:1,true:0,false:0,inspected:0,mod_operand:1}

function aoc_library:io/next_string
# starting items
function aoc_library:io/next_string
function aoc_library:io/tokenize
function aoc_library:io/next_token
function aoc_library:io/next_token
function aoc_2022:logic/day_11/part_2/init/items
# operation
function aoc_library:io/next_string
scoreboard players set skip_count aoc_calc 24
function aoc_library:io/skip_chars
data modify storage aoc:library char1 set from storage aoc:calc next_char
data modify storage aoc:library char2 set value "+"
function aoc_library:char/equals
# 1 = * | 2 = + | 3 = **
execute if score char_eq aoc_calc matches 1 run data modify storage aoc:calc monkey.operator set value 2
scoreboard players set skip_count aoc_calc 1
function aoc_library:io/skip_chars
function aoc_library:io/string_to_int
execute unless score num_invalid aoc_calc matches 1 store result storage aoc:calc monkey.operand int 1 run scoreboard players operation mod_op aoc_calc = num aoc_calc
execute if score num_invalid aoc_calc matches 1 run data modify storage aoc:calc monkey.operator set value 3
# test
function aoc_library:io/next_string
scoreboard players set skip_count aoc_calc 21
function aoc_library:io/skip_chars
function aoc_library:io/string_to_int
execute store result storage aoc:calc monkey.divisor int 1 run scoreboard players get num aoc_calc
execute store result storage aoc:calc monkey.mod_operand int 1 run scoreboard players operation mod_op aoc_calc %= num aoc_calc
# if true
function aoc_library:io/next_string
scoreboard players set skip_count aoc_calc 29
function aoc_library:io/skip_chars
function aoc_library:io/string_to_int
execute store result storage aoc:calc monkey.true int 1 run scoreboard players get num aoc_calc
# if false
function aoc_library:io/next_string
scoreboard players set skip_count aoc_calc 30
function aoc_library:io/skip_chars
function aoc_library:io/string_to_int
execute store result storage aoc:calc monkey.false int 1 run scoreboard players get num aoc_calc

data modify storage aoc:calc monkeys append from storage aoc:calc monkey
data modify storage aoc:calc divisors append from storage aoc:calc monkey.divisor
function aoc_library:io/next_string

execute if score input_length aoc_calc matches 1.. run function aoc_2022:logic/day_11/part_2/init/monkeys
