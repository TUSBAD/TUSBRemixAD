#> mob_manager:custom_mob/health/heal
#
# 回復処理
#
# @within function mob_manager:custom_mob/health/

# 超過しないように加算
scoreboard players operation @s CustomHealth += @s Heal
scoreboard players operation @s CustomHealth < @s MaxCustomHealth

# 表示
function mob_manager:custom_mob/health/log/summon/heal

# 演出
function mob_manager:custom_mob/health/makeup/heal

# リセット
scoreboard players reset @s Heal
