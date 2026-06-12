#> mob_manager:custom_mob/health/log/mob_tick
#
# ダメージを受けた後のtick処理
#
# @within function mob_manager:custom_mob/

# 加算
    scoreboard players add @s LogRemoveTime 1

# 60tick後に累計処理
    execute if score @s LogRemoveTime matches 60.. run function mob_manager:custom_mob/health/log/total
