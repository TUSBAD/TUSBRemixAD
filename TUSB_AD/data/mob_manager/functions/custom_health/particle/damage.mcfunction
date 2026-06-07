#> mob_manager:custom_health/particle/damage
#
# 
#
# @within function mob_manager:custom_health/damage

effect give @s minecraft:instant_damage 1 127 true
effect give @s minecraft:instant_health 1 127 true

particle minecraft:damage_indicator ~ ~0.8 ~ 0.08 0.08 0.08 0.3 6 force @a[distance=..16]
