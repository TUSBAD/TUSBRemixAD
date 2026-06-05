#> job:skill/archer/madan/schedule/

data modify storage tusb_remake: _ set value false
execute as @e[type=#lib:arrow,tag=madan] at @s run function job:skill/archer/madan/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function job:skill/archer/madan/schedule/ 1t
