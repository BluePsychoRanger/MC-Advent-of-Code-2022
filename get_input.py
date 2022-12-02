import os
from aocd.models import Puzzle

YEAR = 2022
DAY = 3

FILEPATH = f"advent_of_code_2022/data/aoc_{YEAR}/functions/get_input/day_{DAY}.mcfunction"

def get_puzzle_input():
    puzzle = Puzzle(year=YEAR, day=DAY)
    out = None
    try:
        out = puzzle.input_data
    except:
        print("Failed to get data for Day", DAY)
    return out

def parse_input(input):
    lines = input.split("\n")
    data = []
    for line in lines:
        chars = list(line)
        data.append(chars)
    cmd = "data merge storage bpr:aoc {Input:" + str(data) + "}"
    return cmd.replace(", ", ",")
    
def write_function(cmd):
    os.makedirs(os.path.dirname(FILEPATH), exist_ok=True)
    with open(FILEPATH, "w") as file:
        file.write(f"{cmd}\n")

def main():
    input = get_puzzle_input()
    if input is None:
        exit(0)
    cmd = parse_input(input)
    write_function(cmd)



if __name__ == '__main__':
	main()
