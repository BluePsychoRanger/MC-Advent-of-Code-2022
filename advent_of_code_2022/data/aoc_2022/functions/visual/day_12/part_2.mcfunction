scoreboard players reset * aoc_calc
scoreboard players reset * aoc_answer
scoreboard players set day aoc_answer 12
scoreboard players set part aoc_answer 2

data merge storage aoc:calc {Input:[['a','b','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','c','c','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a'],['a','b','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','a','a','c','c','c','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a'],['a','b','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','a','c','a','a','c','c','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a'],['a','b','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a'],['a','b','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','c'],['a','b','a','a','c','c','a','a','c','c','c','c','a','a','c','c','a','a','a','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','c','a','a','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','a','l','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c'],['a','b','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','a','a','a','a','c','c','c','a','a','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','a','l','l','l','l','l','l','l','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c'],['a','b','a','a','a','a','a','a','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','c','c','c','c','a','a','a','a','c','c','c','c','c','c','a','a','a','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','c','c','c','c','c','c','c','a','a','a','a','k','l','l','l','l','l','l','l','l','c','c','c','c','c','c','c','a','a','c','c','c','c','c','c'],['a','b','a','a','a','a','a','a','c','c','c','c','c','c','c','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','c','c','c','c','c','c','c','a','a','a','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','c','c','c','c','c','c','c','a','a','k','k','k','l','l','l','p','l','l','l','l','c','c','c','c','a','c','a','a','a','c','c','c','c','c','c'],['a','b','a','a','a','a','a','a','a','c','c','c','c','c','c','a','a','a','a','c','c','c','c','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','k','k','k','k','p','p','p','p','p','p','l','l','l','c','c','c','a','a','a','a','a','a','a','c','c','c','c'],['a','b','a','a','a','a','a','a','a','c','a','a','a','c','c','a','a','a','a','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','k','k','k','k','k','k','k','p','p','p','p','p','p','p','p','l','l','l','c','d','d','a','a','a','a','a','a','c','c','c','c'],['a','b','c','a','a','a','a','c','c','c','a','a','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','a','a','a','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','a','a','a','a','c','c','j','k','k','k','k','k','k','k','p','p','p','p','p','u','p','p','p','l','m','m','d','d','d','d','d','a','a','a','c','c','c','c','c'],['a','b','c','c','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','c','c','c','c','a','a','a','a','j','j','j','k','k','k','k','k','r','p','p','p','u','u','u','u','u','p','p','p','m','m','m','d','d','d','d','d','a','c','c','c','c','c','c'],['a','b','c','c','c','c','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c','j','j','j','j','r','r','r','r','r','r','p','p','u','u','u','u','u','p','q','q','m','m','m','m','m','d','d','d','d','a','c','c','c','c','c'],['a','b','c','c','c','c','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','a','a','a','a','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','j','j','j','r','r','r','r','r','r','r','r','p','u','u','u','x','u','v','v','q','q','q','m','m','m','m','m','d','d','d','d','c','c','c','c','c'],['a','b','c','c','c','c','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','a','a','c','c','c','a','c','c','c','c','c','c','c','c','a','a','c','c','j','j','j','r','r','r','r','u','u','u','u','u','u','u','x','x','y','v','v','q','q','q','q','q','m','m','m','m','m','d','d','d','c','c','c','c'],['a','b','c','c','c','c','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','c','a','a','c','a','a','c','c','c','c','a','a','a','c','a','a','c','c','c','a','a','a','c','a','a','a','c','c','j','j','j','r','r','r','t','u','u','u','u','u','u','u','x','x','y','v','v','v','q','q','q','q','q','m','m','m','m','d','d','d','c','c','c','c'],['a','b','c','c','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','a','a','a','a','a','a','a','c','c','j','j','j','r','r','t','t','t','t','x','x','x','x','x','x','y','y','v','v','v','v','v','q','q','q','q','m','m','m','m','d','e','e','c','c','c'],['a','b','c','c','a','a','a','c','c','a','a','a','c','c','c','c','c','c','c','c','a','a','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','a','a','a','a','a','a','c','c','c','j','j','j','r','r','t','t','t','x','x','x','x','x','x','x','y','y','v','v','v','v','v','v','v','q','q','q','m','m','m','e','e','e','c','c','c'],['a','b','a','a','a','a','a','a','a','a','a','a','c','c','c','a','a','a','c','c','a','a','a','a','a','a','a','a','a','a','a','c','c','a','a','a','c','c','c','c','a','a','a','a','a','a','a','a','c','c','c','a','a','a','a','a','a','a','a','j','j','j','q','q','r','t','t','x','x','x','x','x','x','x','y','y','y','y','y','y','v','v','v','q','q','q','n','n','n','e','e','e','c','c','c'],['S','b','a','a','a','a','a','a','a','a','c','c','c','c','a','a','a','a','c','c','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','c','c','c','a','a','a','a','a','a','a','a','c','c','a','a','a','a','a','a','a','a','a','c','j','j','j','q','q','t','t','t','x','x','x','x','E','z','z','y','y','y','y','v','v','v','v','q','q','q','n','n','n','e','e','e','c','c','c'],['a','b','c','a','a','a','a','a','a','c','c','c','c','c','a','a','a','a','c','c','c','c','a','a','a','a','a','a','a','c','c','a','a','a','a','a','a','c','c','c','c','c','c','a','a','c','c','c','c','a','a','a','a','a','a','a','a','a','a','c','i','i','i','q','q','q','t','t','t','x','x','x','y','y','y','y','y','y','v','v','v','v','r','r','r','n','n','n','e','e','e','c','c','c','c'],['a','b','c','a','a','a','a','a','a','c','c','c','c','c','a','a','a','a','c','c','c','a','a','a','a','a','a','a','a','c','c','a','a','a','a','a','a','c','c','c','c','c','c','a','a','c','c','c','c','a','a','a','c','a','a','a','c','c','c','c','i','i','i','q','q','q','q','t','t','x','x','y','y','y','y','y','y','w','v','v','v','r','r','r','n','n','n','e','e','e','e','c','c','c','c'],['a','b','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','i','i','i','q','q','t','t','t','x','x','y','y','y','y','y','y','w','w','r','r','r','r','n','n','n','n','e','e','e','c','c','c','c','c'],['a','b','c','a','a','a','c','a','a','c','c','c','c','c','a','a','c','c','c','c','c','a','a','a','a','a','a','a','a','a','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','i','i','i','q','q','t','t','x','x','x','y','w','w','y','y','y','w','w','r','r','r','n','n','n','n','e','e','e','c','c','c','c','c','c'],['a','b','c','c','c','c','c','c','c','c','a','a','a','c','a','a','c','c','c','c','c','c','c','c','c','c','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','i','i','q','q','q','t','t','x','x','w','w','w','w','w','w','y','w','w','r','r','r','n','n','n','e','e','e','c','c','c','c','c','c','c'],['a','b','c','c','a','a','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','c','a','a','i','i','q','q','q','t','t','w','w','w','w','s','s','w','w','w','w','w','r','r','r','n','n','f','f','f','e','c','c','c','c','c','c','c'],['a','b','a','a','a','a','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','c','a','a','a','a','a','i','i','q','q','q','t','t','s','s','s','s','s','s','s','w','w','w','w','r','r','r','o','n','f','f','f','a','c','c','c','c','c','c','c'],['a','b','a','a','a','a','a','a','c','c','c','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','a','a','a','a','a','i','i','q','q','q','s','s','s','s','s','s','s','s','s','s','s','w','r','r','r','o','o','o','f','f','f','a','a','a','a','c','c','c','c'],['a','b','a','a','a','a','a','a','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','a','a','a','a','a','i','i','q','q','q','p','p','s','s','s','p','p','p','s','s','s','s','r','r','r','o','o','o','f','f','f','a','a','a','a','c','c','c','c'],['a','b','a','a','a','a','a','a','c','c','a','a','c','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','a','a','a','a','a','i','i','h','p','p','p','p','p','p','p','p','p','p','p','o','s','s','r','r','o','o','o','f','f','f','a','a','a','a','a','c','c','c','c'],['a','b','a','a','a','a','c','c','c','c','c','c','c','c','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','a','a','a','h','h','h','h','p','p','p','p','p','p','p','p','p','p','o','o','o','o','o','o','o','o','f','f','f','a','a','a','a','c','c','c','c','c'],['a','b','a','a','a','a','c','c','c','c','c','c','c','c','c','c','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','h','h','h','h','h','h','h','h','h','h','g','g','p','o','o','o','o','o','o','o','f','f','f','f','a','a','a','a','c','c','c','c','c'],['a','b','c','c','a','a','c','c','c','c','c','c','c','a','c','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','h','h','h','h','h','h','h','h','h','g','g','g','g','o','o','o','o','o','f','f','f','f','a','a','c','a','a','a','c','c','c','c'],['a','b','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','h','h','h','h','h','h','h','h','g','g','g','g','g','g','g','g','g','g','f','f','c','a','a','c','c','c','c','c','c','c','c'],['a','b','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','c','c','c','a','a','c','c','c','c','c','c','c','c','c','c','c','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','g','g','g','g','g','g','g','g','f','c','c','c','c','c','c','c','c','c','c','c','c'],['a','b','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','a','a','c','c','c','c','c','c','c','c','c','a','a','a','a','c','a','a','a','a','c','c','c','c','c','c','c','c','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','c','a','a','a','g','g','g','g','g','c','c','c','c','c','c','c','c','c','a','c','c','c'],['a','b','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','a','a','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c','c','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','c'],['a','b','c','c','c','c','c','c','c','c','c','c','c','a','a','c','a','a','c','c','a','a','a','a','a','a','a','a','c','c','c','a','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','c','c','c','c','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a'],['a','b','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','c','c','a','a','a','a','a','a','a','a','c','c','a','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a'],['a','b','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','c','c','c','a','a','a','a','a','a','a','a','a','a','a','a','c','c','c','c','c','c','c','c','c','a','a','c','a','a','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','c','a','a','a','a','a','a']]}
execute store result score input_length aoc_calc run data get storage aoc:calc Input

function aoc_library:timer/start
function aoc_2022:logic/day_12/visual_2/run
