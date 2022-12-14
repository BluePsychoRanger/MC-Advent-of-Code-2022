scoreboard players set is_num aoc_calc 1

execute store result score num1 aoc_calc run data get storage aoc:calc next1[-1]
execute store result score num2 aoc_calc run data get storage aoc:calc next2[-1]

execute if score num1 aoc_calc < num2 aoc_calc run scoreboard players set correct aoc_calc 1
execute if score num1 aoc_calc > num2 aoc_calc run scoreboard players set correct aoc_calc 0

tellraw @a ["num1: ",{"score":{"name": "num1","objective": "aoc_calc"}},"  num2: ",{"score":{"name": "num2","objective": "aoc_calc"}}]
