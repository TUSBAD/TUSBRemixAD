#> job:skill/white_mage/syawa_/schedule/

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=HolyShower] at @s run function job:skill/white_mage/syawa_/schedule/fly
execute as @a[distance=..12] at @e[type=snowball,tag=HolyShower] run function player_manager:effect/clear_bad_effect
execute as @a[distance=..12] at @e[type=snowball,tag=HolyShower] run effect give @s absorption 60 10 true
execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/white_mage/syawa_/schedule/ 1t
execute at @e[type=snowball,tag=HolyShower] run scoreboard players set @a[distance=..12] HealCount 10
