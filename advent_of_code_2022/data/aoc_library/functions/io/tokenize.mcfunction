# tokenizes the io string by delimeters
# input:  storage | delimeters
# output: storage | next_string


# tokenize io string
data modify storage aoc:library string set from storage aoc:calc next_string
function aoc_library:string/tokenize

# replace io string with tokenized list of strings
data modify storage aoc:calc next_string set from storage aoc:library strings
execute store result score next_string_length aoc_calc run data get storage aoc:calc next_string
