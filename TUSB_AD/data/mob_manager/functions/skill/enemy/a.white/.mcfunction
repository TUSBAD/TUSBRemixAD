#> mob_manager:skill/enemy/a.white/
#
# tag A.White
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

# 死天召喚
# オリュンポス・ギガンドマキア

execute if score @s Random matches 1 run function mob_manager:skill/enemy/white_rider/day_of_death
execute if score @s Random matches 2 run function mob_manager:skill/enemy/a.black/oryunpos_toroia
