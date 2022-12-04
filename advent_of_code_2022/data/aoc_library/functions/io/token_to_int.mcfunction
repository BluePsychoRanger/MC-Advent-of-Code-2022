# converts the io token to an int
# input:  none
# ouput:  score | num


data modify storage bpr:aoc/library string set from storage bpr:aoc next_token
function aoc_library:string/to_int
