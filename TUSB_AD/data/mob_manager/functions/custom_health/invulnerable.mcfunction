#> mob_manager:custom_health/invulnerable
#
# 
#
# @within function core:clock/first

me "は体力を全回復した！"

effect give @s resistance infinite 127 true
scoreboard players set @s Heal 2147483647
