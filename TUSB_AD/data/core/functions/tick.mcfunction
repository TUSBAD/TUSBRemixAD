#> core:tick
#
# 毎tick処理
#
# @within function core:load/once
    #declare score_holder #Tick Count

#> 現在時刻更新
    function core:clock/tick

#> ハード固定化
    function core:login/force_difficulty

#> 初回ログイン時
    execute as @a[team=] at @s run function core:login/first

#> ログイン時
    execute as @a[scores={LeaveGame=1..}] at @s run function core:login/

#> ワールドTick
    function world_manager:tick

#> プレイヤーTick
    execute as @a at @s run function player_manager:tick

#> 1秒処理
    scoreboard players add #Tick Count 1
    execute if score #Tick Count matches 20.. run function core:one_second
