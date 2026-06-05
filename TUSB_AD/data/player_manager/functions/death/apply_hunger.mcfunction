#> player_manager:death/apply_hunger
# 空腹度
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# RR: 盲目→弱体化に変更
    tellraw @s[scores={Hunger=0..3}] [{"text":"どこからか声が聞こえる…。\n「腹が減っては探索できぬぞ。」\n"},{"text":"お腹が少し満たされた。\n","color":"aqua"},{"text":"魔力の回復が鈍くなった...","color":"light_purple"}]
    scoreboard players set @s MPAcceleration -600

# 満腹度を調整
    scoreboard players operation @s FoodMax = @s Hunger
    scoreboard players set @s[scores={FoodMax=0..3}] FoodMax 4

# 最大HP修正フラグ
    function player_manager:health/set_max
    effect give @s instant_health 1 6 true
    scoreboard players enable @s kill

# レイズ中ならレイズの後処理
    execute as @s[tag=Raise] at @s run function job:skill/white_mage/raise/return

# 生きてる間は空腹度=-1
    scoreboard players set @s Hunger -1
