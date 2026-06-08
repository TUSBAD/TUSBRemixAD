#> mob_manager:custom_health/absorption_dataget
#
# 
#
# @within function core:clock/last

execute store result score @s Damage run data get entity @s AbsorptionAmount -5
scoreboard players operation @s Damage += $10240 Damage
execute if score @s Damage matches ..0 run scoreboard players set @s Damage 1

data modify entity @s AbsorptionAmount set value 2048f
