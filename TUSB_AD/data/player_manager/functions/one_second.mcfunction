#> player_manager:one_second
#
# プレイヤー1秒処理
#
# @within function player_manager:tick
#declare score_holder #Seconds Count

# -> 10秒処理
execute if score #Seconds Count matches 0 run function player_manager:ten_seconds

# 死の宣告
    execute if entity @s[tag=Doom] run function player_manager:effect/invisible/doom/default

# 嫌な予感を実行する
#    execute if entity @s[predicate=world_manager:area/cause_area,tag=CauseEvent] if score #Seconds Count matches 0 run function world_manager:event/rank/

# トカルトの処理
    execute if entity @s[predicate=world_manager:area/tocult_colde,gamemode=!spectator] run function world_manager:dimension/tocult/process/

# ゾンビピッグマンのおこる対象を設定する
    execute if entity @s[gamemode=!spectator] run function world_manager:dimension/nether/angry