#> mob_manager:custom_mob/health/log/total
#
# LogRemoveTimeの終了
#
# @within function mob_manager:custom_mob/health/log/mob_tick

# 与えたダメージがあるなら累計表示
    execute if score @s ShowDamage matches 1.. run function mob_manager:custom_mob/health/log/summon/total_damage
    scoreboard players reset @s LogRemoveTime
