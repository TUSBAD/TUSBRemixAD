#> player_manager:half_second
#
# プレイヤー0.5秒処理
#
# @public
#Declare entity @s[tag=DoomEX]

### 致死の宣告
    execute if entity @s[tag=DoomEx] run function player_manager:effect/invisible/doom_ex/count
