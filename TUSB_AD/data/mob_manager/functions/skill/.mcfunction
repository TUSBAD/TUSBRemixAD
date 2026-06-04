#> mob_manager:skill/
# 敵のスキルやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# sec/-1
scoreboard players remove @s MobCastTime 1
# 0で発動
execute if score @s MobCastTime matches 0 run function mob_manager:skill/invoke

# 初期設定は 20 or 8
    execute unless score @s MobCastTime matches 1.. run scoreboard players set @s MobCastTime 20
    execute unless score @s[tag=FastCast] MobCastTime matches 1.. run scoreboard players set @s MobCastTime 8

# MobCastTimeを設定する場合(仮)
    # execute unless score @s[tag=MobCast.15] MobCastTime matches 1.. run scoreboard players set @s MobCastTime 15
    # execute unless score @s[tag=MobCast.10] MobCastTime matches 1.. run scoreboard players set @s MobCastTime 20
    # execute unless score @s[tag=MobCast.5 ] MobCastTime matches 1.. run scoreboard players set @s MobCastTime 5
