#> mob_manager:custom_health/status_makeup/tick
#
# 
#
# @within function core:tick/

# 上にずらす
    tp @s ~ ~0.01 ~

# 一定tickで削除する
    scoreboard players add @s LogRemoveTime 1
    execute if score @s LogRemoveTime matches 40.. run kill @s
