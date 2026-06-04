#> mob_manager:skill/enemy/a.pale/
#
# tag A.Pale
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

# 死魔召喚
# ハデスナイトメア
execute if score @s Random matches 1 run function mob_manager:skill/enemy/pale_rider/death_demon
execute if score @s Random matches 2 run function mob_manager:skill/enemy/a.pale/hadesu_nightmare
