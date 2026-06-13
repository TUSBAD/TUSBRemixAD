#> job:skill/archer/madan/schedule/

data modify storage skill: _ set value false
execute as @e[type=#lib:arrow,tag=madan] at @s run function job:skill/archer/madan/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/archer/madan/schedule/ 1t
