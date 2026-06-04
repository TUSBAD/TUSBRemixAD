#> mob_manager:skill/enemy/summon/enhanced_servants
#
# 強化ボスをランダムに召喚
#
# @within function mob_manager:skill/enemy/*/summon

# 乱数を取得
data modify storage math: in set value [1,5]
function api:dice/score

execute if score @s Random matches 1 run function mob_manager:skill/enemy/summon/trumpeter
execute if score @s Random matches 2 run function mob_manager:skill/enemy/summon/last_investigation
execute if score @s Random matches 3 run function mob_manager:skill/enemy/summon/swat_and_spetnaz
execute if score @s Random matches 4 run function mob_manager:skill/enemy/summon/igornak
execute if score @s Random matches 5 run function mob_manager:skill/enemy/summon/old_shinen
