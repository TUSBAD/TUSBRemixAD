#> job:skill/white_mage/ignition/schedule/

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=Ignition] at @s run function job:skill/white_mage/ignition/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/white_mage/ignition/schedule/ 1t
