# starts the real-time counter
# input:  none
# output: none

# clear storage
data remove storage aoc:library time

# start timer
scoreboard players set runtime aoc_calc 6000000
worldborder center 0 0
worldborder set 6000000
worldborder add -600000 600
