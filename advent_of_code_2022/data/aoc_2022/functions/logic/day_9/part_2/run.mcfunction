kill @e[type=marker,tag=aoc_head]
summon marker 0 64 0 {Tags:[aoc_head]}
kill @e[type=marker,tag=aoc_tail]
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_1]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_2]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_3]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_4]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_5]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_6]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_7]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_8]}
summon marker 0 64 0 {Tags:[aoc_tail,aoc_tail_9]}

scoreboard players set answer aoc_answer 0
tp @a 0 96 0 0 90
gamemode spectator @a

execute as @e[type=marker,tag=aoc_head] at @s run function aoc_2022:logic/day_9/part_2/loop
function aoc_library:io/print_answer
forceload remove all
