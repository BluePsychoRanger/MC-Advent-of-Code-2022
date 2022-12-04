# starts the real-time counter
# input:  none
# output: none

# clear storage
data remove storage bpr:aoc/library time

# start timer
scoreboard players set runtime bpr_aoc 6000000
worldborder center 0 0
worldborder set 6000000
worldborder add -600000 600
