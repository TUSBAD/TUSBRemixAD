#> mob_manager:custom_mob/health/damage
#
# ダメージ処理
#
# @within function mob_manager:custom_mob/health/

# 減算
scoreboard players operation @s CustomHealth -= @s Damage

# 表示
function mob_manager:custom_mob/health/log/summon/damage

# 演出
function mob_manager:custom_mob/health/makeup/damage

# HPが0になったら死亡処理
execute if score @s CustomHealth matches ..0 run function mob_manager:custom_mob/death/

# リセット
scoreboard players reset @s Damage
