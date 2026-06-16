#> world_manager:one_second
#
# ワールド1秒処理
#
# @within function world_manager:tick
    #declare score_holder #Seconds Count

# -> 10秒処理。
    execute if score #Seconds Count matches 0 run function world_manager:ten_seconds

# 煉獄龍中の色々
    execute as 0-0-1-0-4 at @s positioned ~ ~-19 ~74 if block -1860 20 -51 minecraft:slime_block if entity @p[distance=..65,gamemode=!spectator] run function world_manager:dimension/purgatory/boss/attack_check

# エンダーチェスト島のワープ
    execute positioned 58 94 -103 as @e[dx=17,dy=2,dz=17] if predicate lib:no_passengers at @s if block ~ ~-1 ~ #lib:stained_glass_and_pane run spreadplayers ~ ~ 1 300 under 319 false @s

# ホッパー島のワープ
    execute positioned 177 39 -75 if entity @a[distance=..60,gamemode=!spectator] run function world_manager:dimension/skylands/hopper/

# 煉獄マグマ
    execute as @a if dimension world_manager:the_nether unless score @s PurgatoryInvalid matches 1.. at @s if block ~ ~0.5 ~ minecraft:lava run function world_manager:dimension/nether/in_lava
