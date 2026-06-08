#> mob_manager:custom_health/tick
#
# 
#
# @within function mob_manager:custom_health/

scoreboard players add @s LogRemoveTime 1

execute if score @s LogRemoveTime matches 60.. run function mob_manager:custom_health/reset
