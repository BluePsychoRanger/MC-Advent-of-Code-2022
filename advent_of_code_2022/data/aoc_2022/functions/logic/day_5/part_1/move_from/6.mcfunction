execute if score to bpr_aoc matches 1 run data modify storage bpr:aoc boxes[1] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 2 run data modify storage bpr:aoc boxes[2] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 3 run data modify storage bpr:aoc boxes[3] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 4 run data modify storage bpr:aoc boxes[4] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 5 run data modify storage bpr:aoc boxes[5] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 6 run data modify storage bpr:aoc boxes[6] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 7 run data modify storage bpr:aoc boxes[7] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 8 run data modify storage bpr:aoc boxes[8] append from storage bpr:aoc boxes[6][-1]
execute if score to bpr_aoc matches 9 run data modify storage bpr:aoc boxes[9] append from storage bpr:aoc boxes[6][-1]

data remove storage bpr:aoc boxes[6][-1]
