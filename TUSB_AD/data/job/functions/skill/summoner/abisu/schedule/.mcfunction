#> job:skill/summoner/abisu/schedule/

data modify storage skill: _ set value false

execute as @e[type=falling_block,tag=abisu] at @s run function job:skill/summoner/abisu/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/summoner/abisu/schedule/ 1t
