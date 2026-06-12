#> mob_manager:custom_mob/health
#
# custom_mobのhealth処理
#
# @within function core:clock/last

# カスタム体力へのダメージ取得
    execute unless predicate lib:absorption_max run function mob_manager:custom_mob/health/absorption

# Damage or Healがあると計算
    execute if score @s Heal matches 1.. run function mob_manager:custom_mob/health/heal
    execute if score @s Damage matches 1.. run function mob_manager:custom_mob/health/damage

# 表示時間加算
    execute if score @s LogRemoveTime matches 1.. at @s run function mob_manager:custom_mob/health/log/mob_tick
