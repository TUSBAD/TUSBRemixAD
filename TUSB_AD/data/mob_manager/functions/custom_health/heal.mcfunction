#> mob_manager:custom_health/heal
#
# 
#
# @within function core:clock/last

# 超過しないように加算
scoreboard players operation @s CustomHealth += @s Heal
scoreboard players operation @s CustomHealth < @s MaxCustomHealth

# 表示
function mob_manager:custom_health/log/summon/heal

# 演出
function mob_manager:custom_health/particle/heal

# リセット
scoreboard players reset @s Heal
