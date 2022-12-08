# prints big_int to chat
# input:  storage | big_int
# output: none


# convert to joined string
function aoc_library:big_int/as_string
# send to chat
tellraw @a {"nbt":"big_int_string","storage":"aoc:library","interpret":true}
