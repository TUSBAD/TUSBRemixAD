#> mob_manager:custom_health/damage
#
# ダメージを与える処理
#
# @within function core:clock/first

# 減算
scoreboard players operation @s CustomHealth -= @s Damage

# 表示
function mob_manager:custom_health/log/summon/damage

# 演出
function mob_manager:custom_health/particle/damage

# HPが0になったら死亡処理
execute if score @s CustomHealth matches ..0 run function mob_manager:custom_health/death

# リセット
scoreboard players reset @s Damage
