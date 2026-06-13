#> mob_manager:custom_mob/health/absorption
#
# 緩衝体力値の計算
#
# @within function mob_manager:custom_mob/health/

# 被ダメージ量の5倍を保存
    execute store result score @s Damage run data get entity @s AbsorptionAmount -5
    scoreboard players operation @s Damage += $5120 Damage
    execute if score @s Damage matches ..0 run scoreboard players set @s Damage 1

# 緩衝体力をセット
    data modify entity @s AbsorptionAmount set value 1024f
