# try to add the char to the marker
execute store result score tag_count_prev aoc_calc run tag @s list
data modify entity @s Tags append from storage aoc:library temp_string[-1]
execute store result score tag_count aoc_calc run tag @s list

# if failed, add duplicate char
execute if score tag_count_prev aoc_calc = tag_count aoc_calc run data modify storage aoc:library duplicates prepend from storage aoc:library temp_string[-1]

# loop for all chars of the string
data remove storage aoc:library temp_string[-1]
scoreboard players remove i_string_find_duplicates aoc_calc 1
execute if score i_string_find_duplicates aoc_calc matches 1.. run function aoc_library:string/helper_functions/find_duplicates_loop
