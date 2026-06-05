#> mob_manager:skill/enemy/tarai_z/
#
# tag TaraiZ
#
# @within function mob_manager:skill/invoke


# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# ヴァルプルギス・ぺルソナ
execute if score @s Random matches 1 run function mob_manager:skill/enemy/tarai_z/valpurgius_persona
