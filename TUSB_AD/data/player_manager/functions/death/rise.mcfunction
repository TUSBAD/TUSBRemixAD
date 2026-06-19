#> player_manager:death/rise
# 空腹度
#
#
# @within function player_manager:tick

# RR: 盲目→弱体化に変更
    tellraw @s[scores={Hunger=0..3}] [{"text":"どこからか声が聞こえる…。\n「腹が減っては探索できぬぞ。」\n"},{"text":"お腹が少し満たされた。\n","color":"aqua"},{"text":"魔力の回復が鈍くなった...","color":"light_purple"}]
    scoreboard players set @s MPAcceleration -600

# 最大体力
    function player_manager:effect/status/modify_max

# MP超過修正
    scoreboard players operation @s MP < @s MPMax

# 全回復
    effect give @s instant_health 1 10 true

# MP表示修正
    function player_manager:mp_bar/set

# 満腹度調整
    function player_manager:effect/status/hunger

# 祈りを有効にする
    scoreboard players enable @s kill

# レイズ中ならレイズの後処理
    execute as @s[tag=Raise] at @s run function job:skill/white_mage/raise/return

# フラグリセット
    scoreboard players set @s Hunger -1
