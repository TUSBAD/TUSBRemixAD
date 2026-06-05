#> mob_manager:skill/enemy/a.red/
#
# tag A.Red
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

# ヴァルプルギス・サンライズ
# オリュンポス・ティタノマキア
execute if score @s Random matches 1 run function mob_manager:skill/enemy/a.red/walpurgis_sunrise
execute if score @s Random matches 2 run function mob_manager:skill/enemy/a.red/oryunpos_thitanomakia/
