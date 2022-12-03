import os
from aocd.models import Puzzle

YEAR = 2022

DIR = f"advent_of_code_2022/data/aoc_{YEAR}/functions/_solve"

def get_puzzle_input(day):
    puzzle = Puzzle(year=YEAR, day=day)
    out = None
    try:
        out = puzzle.input_data
    except:
        print(f"Downloaded data from Days 1-{day-1}")
    return out

def parse_input(input):
    lines = input.split("\n")
    data = []
    for line in lines:
        chars = list(line)
        data.append(chars)
    cmd = "data merge storage bpr:aoc {Input:" + str(data) + "}"
    return cmd.replace(", ", ",")
    
def write_functions(cmd, day):
    os.makedirs(os.path.dirname(f"{DIR}/day_{day}/part_1.mcfunction"), exist_ok=True)
    with open(f"{DIR}/day_{day}/part_1.mcfunction", "w") as file:
        file.write(f"scoreboard players reset * bpr_aoc\nscoreboard players reset * bpr_aoc_answers\nscoreboard players set day bpr_aoc_answers {day}\nscoreboard players set part bpr_aoc_answers 1\n\n{cmd}\nexecute store result score input_length bpr_aoc run data get storage bpr:aoc Input\n\nfunction aoc_library:timer/start\nfunction aoc_2022:logic/day_{day}/part_1/run\n")
    
    os.makedirs(os.path.dirname(f"{DIR}/day_{day}/part_2.mcfunction"), exist_ok=True)
    with open(f"{DIR}/day_{day}/part_2.mcfunction", "w") as file:
        file.write(f"scoreboard players reset * bpr_aoc\nscoreboard players reset * bpr_aoc_answers\nscoreboard players set day bpr_aoc_answers {day}\nscoreboard players set part bpr_aoc_answers 2\n\n{cmd}\nexecute store result score input_length bpr_aoc run data get storage bpr:aoc Input\n\nfunction aoc_library:timer/start\nfunction aoc_2022:logic/day_{day}/part_2/run\n")

def main():
    day = 1
    while (1):
        input = get_puzzle_input(day)
        if input is None:
            exit(0)
        cmd = parse_input(input)
        write_functions(cmd, day)
        day += 1



if __name__ == '__main__':
	main()
