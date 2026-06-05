#> mob_manager:skill/enemy/trumpet/
#
# tag Trumpet
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,6]
function api:dice/score

# デカジャ
# 魔緑のラッパ
# マハブフダイン
# マハジオダイン
# マハラギダイン
# メギドラオン

execute if score @s Random matches 1 run function mob_manager:skill/enemy/trumpet/dekaja
execute if score @s Random matches 1 run function mob_manager:skill/enemy/trumpet/green_trumpet
execute if score @s Random matches 1 run function mob_manager:skill/enemy/trumpet/mahabufdain
execute if score @s Random matches 1 run function mob_manager:skill/enemy/trumpet/mahajodain
execute if score @s Random matches 1 run function mob_manager:skill/enemy/trumpet/maharagidain
execute if score @s Random matches 1 run function mob_manager:skill/enemy/trumpet/megidraon
