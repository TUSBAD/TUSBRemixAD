#> mob_manager:skill/enemy/all_rider/
#
# tag AllRider
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# ヴァルプルギス・トワイライト
execute if score @s Random matches 1 run function mob_manager:skill/enemy/all_rider/walpurgis_twilight
