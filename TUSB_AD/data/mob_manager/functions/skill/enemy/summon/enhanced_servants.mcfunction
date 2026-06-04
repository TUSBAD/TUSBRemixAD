#> mob_manager:skill/enemy/summon/enhanced_servants
#
# 強化ボスをランダムに召喚
#
# @within function mob_manager:skill/enemy/*/summon

execute if score @s MobCastTime matches 0..1 run function mob_manager:skill/enemy/summon/trumpeter
execute if score @s MobCastTime matches 2..3 run function mob_manager:skill/enemy/summon/last_investigation
execute if score @s MobCastTime matches 4..5 run function mob_manager:skill/enemy/summon/swat_and_spetnaz
execute if score @s MobCastTime matches 6..7 run function mob_manager:skill/enemy/summon/igornak
execute if score @s MobCastTime matches 8..9 run function mob_manager:skill/enemy/summon/old_shinen
