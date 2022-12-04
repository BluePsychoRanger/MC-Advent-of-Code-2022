# tokenizes the io string by delimeters
# input:  storage | delimeters
# output: storage | next_string


# tokenize io string
data modify storage bpr:aoc/library string set from storage bpr:aoc next_string
function aoc_library:string/tokenize

# replace io string with tokenized list of strings
data modify storage bpr:aoc next_string set from storage bpr:aoc/library strings
execute store result score next_string_length bpr_aoc run data get storage bpr:aoc next_string
