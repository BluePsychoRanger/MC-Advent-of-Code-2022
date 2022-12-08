data modify storage aoc:calc Input set from storage aoc:calc stored
execute store result score input_length aoc_calc run data get storage aoc:calc Input
tp @e[type=marker,tag=aoc_scan,limit=1] 0 0 0
scoreboard players set answer aoc_answer 0
schedule function aoc_2022:logic/day_8/visual_2/check/loop 1t
