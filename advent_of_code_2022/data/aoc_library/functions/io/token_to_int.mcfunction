# converts the io token to an int
# input:  none
# ouput:  score | num


data modify storage aoc:library string set from storage aoc:calc next_token
function aoc_library:string/to_int
