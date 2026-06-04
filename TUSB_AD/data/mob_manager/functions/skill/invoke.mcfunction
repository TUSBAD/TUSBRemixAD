#> mob_manager:skill/invoke
#
# 
#
# @within function mob_manager:skill/

# 0-19
scoreboard players set _ TUSB 20
scoreboard players operation @s MobCastTime %= _ TUSB

# WarpOnly
execute if entity @s[tag=WarpOnly] run function mob_manager:skill/tp/warp
# 深淵様
execute if entity @s[tag=Shinen] run function mob_manager:skill/enemy/shinen
# はぐれマグマ
execute if entity @s[tag=Magma] run function mob_manager:skill/enemy/magma
# ホワイトライダー
execute if entity @s[tag=WhiteRider] run function mob_manager:skill/enemy/white_rider
# レッドライダー
execute if entity @s[tag=RedRider] run function mob_manager:skill/enemy/red_rider
# ブラックライダー
execute if entity @s[tag=BlackRider] run function mob_manager:skill/enemy/black_rider
# ペイルライダー
execute if entity @s[tag=PaleRider] run function mob_manager:skill/enemy/pale_rider

# 追加スキル

# newstar_king
    execute if entity @s[tag=NewstarKing] run function mob_manager:skill/enemy/newstar_king

# 亜空間転移
    execute if score @s[tag=akuu] MobCastTime matches 0..4 run function mob_manager:skill/tp/subspace_warp

# infinity_boss
    execute if entity @s[tag=InfinityBoss] run function mob_manager:skill/enemy/infinity_boss

# game_master
    execute if entity @s[tag=GM] unless entity @s[tag=GMend] run function mob_manager:skill/enemy/game_master

# 次のスキルとタイミングを設定
# 0-99を取得
data modify storage math: in set value [1,100]
function #math:dice
execute store result score @s[tag=!FastCast] MobCastTime run data get storage math: out.sum 0.9999999999
# fastcastなモブなら3倍する
execute store result score @s[tag=FastCast] MobCastTime run data get storage math: out.sum 2.9999999999
