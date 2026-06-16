#> job:skill/archer/e_su/schedule/

data modify storage skill: _ set value false
execute as @e[type=arrow,tag=e_su] at @s run function job:skill/archer/e_su/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/archer/e_su/schedule/ 1t
