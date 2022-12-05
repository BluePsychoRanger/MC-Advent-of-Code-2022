data modify storage bpr:aoc/library strings append from storage bpr:aoc temp_boxes[0][-1]
data remove storage bpr:aoc temp_boxes[0]
scoreboard players add i_day5 bpr_aoc 1
execute if score i_day5 bpr_aoc matches ..9 run function aoc_2022:logic/day_5/part_2/parse_output
