data modify storage aoc:library strings append from storage aoc:calc temp_boxes[0][-1]
data remove storage aoc:calc temp_boxes[0]
scoreboard players add i_day5 aoc_calc 1
execute if score i_day5 aoc_calc matches ..9 run function aoc_2022:logic/day_5/part_1/parse_output
