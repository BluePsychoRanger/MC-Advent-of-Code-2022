data merge storage aoc:calc {l:[]}

execute if score is_list1 aoc_calc matches 0 run data modify storage aoc:calc l append from storage aoc:calc next1
execute if score is_list2 aoc_calc matches 0 run data modify storage aoc:calc l append from storage aoc:calc next2

execute if score is_list1 aoc_calc matches 0 run data modify storage aoc:calc next1 set from storage aoc:calc l
execute if score is_list2 aoc_calc matches 0 run data modify storage aoc:calc next2 set from storage aoc:calc l
