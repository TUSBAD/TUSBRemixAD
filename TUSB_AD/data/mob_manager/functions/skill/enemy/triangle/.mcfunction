#> mob_manager:skill/enemy/triangle/
#
# tag Triangle
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,3]
function api:dice/score

# プロミネンス
# サモン・トライアングル

execute if score @s Random matches 1 run function mob_manager:skill/enemy/triangle/prominence
execute if score @s Random matches 2 run function mob_manager:skill/enemy/triangle/summon