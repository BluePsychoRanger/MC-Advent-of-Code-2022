# change current directory
#data modify storage bpr:aoc stack_dir append from storage bpr:aoc current_dir
#data modify storage bpr:aoc current_dir set from storage bpr:aoc next_string[2]

data modify storage bpr:aoc stack_cnt append from storage bpr:aoc current_count
data modify storage bpr:aoc current_count set value [0]
