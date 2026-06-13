#> mob_manager:custom_mob/health/log/display_tick
#
# LogDisplayのtick処理
#
# @within function core:tick/

# 加算
    scoreboard players add @s LogRemoveTime 1

# tagにより動きが変化
    # 移動する
        execute if entity @s[tag=ShortShow] run tp @s ~ ~0.01 ~
        execute if entity @s[tag=LongShow] run tp @s ~ ~0.02 ~

    # 一定tickで削除する
        execute if entity @s[tag=ShortShow] if score @s LogRemoveTime matches 22.. run kill @s
        execute if entity @s[tag=LongShow] if score @s LogRemoveTime matches 28.. run kill @s
