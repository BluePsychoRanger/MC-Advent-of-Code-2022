# try to add the char to the marker
execute store result score tag_count_prev bpr_aoc run tag @s list
data modify entity @s Tags append from storage bpr:aoc/library temp_string[-1]
execute store result score tag_count bpr_aoc run tag @s list

# if failed, add duplicate char
execute if score tag_count_prev bpr_aoc = tag_count bpr_aoc run data modify storage bpr:aoc/library duplicates prepend from storage bpr:aoc/library temp_string[-1]

# loop for all chars of the string
data remove storage bpr:aoc/library temp_string[-1]
scoreboard players remove i_string_find_duplicates bpr_aoc 1
execute if score i_string_find_duplicates bpr_aoc matches 1.. run function aoc_library:string/helper_functions/find_duplicates_loop
