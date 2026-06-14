#> core:clock/last
#
# 毎ティック最後に実行したいもの
#
# @within function #minecraft:tick

# カスタム体力へのダメージ処理
    execute as @e if predicate lib:custom_mob at @s run function mob_manager:custom_mob/health/

# Logテキストの処理
    execute as @e if predicate lib:log_stand at @s run function mob_manager:custom_mob/health/log/display_tick
