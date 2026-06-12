#> mob_manager:custom_health/reset
#
# 
#
# @within function mob_manager:custom_health/tick

execute if score @s ShowDamage matches 1.. run function mob_manager:custom_health/log/total/damage
scoreboard players reset @s LogRemoveTime
