setblock ~ ~ ~ light_blue_stained_glass
kill @s

execute positioned ~1 ~ ~ if block ~ ~ ~ air unless entity @e[type=marker,tag=aoc_fill,distance=..0.3] run summon marker ~ ~ ~ {Tags:["aoc_fill"]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ air unless entity @e[type=marker,tag=aoc_fill,distance=..0.3] run summon marker ~ ~ ~ {Tags:["aoc_fill"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ air unless entity @e[type=marker,tag=aoc_fill,distance=..0.3] run summon marker ~ ~ ~ {Tags:["aoc_fill"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ air unless entity @e[type=marker,tag=aoc_fill,distance=..0.3] run summon marker ~ ~ ~ {Tags:["aoc_fill"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ air unless entity @e[type=marker,tag=aoc_fill,distance=..0.3] run summon marker ~ ~ ~ {Tags:["aoc_fill"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ air unless entity @e[type=marker,tag=aoc_fill,distance=..0.3] run summon marker ~ ~ ~ {Tags:["aoc_fill"]}
