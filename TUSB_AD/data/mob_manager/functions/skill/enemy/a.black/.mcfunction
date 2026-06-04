#> mob_manager:skill/enemy/a.black/
#
# tag A.Black
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

# 死霊召喚
# オリュンポス・ティタノマキア
execute if score @s Random matches 1 run function mob_manager:skill/enemy/black_rider/ghost_summon
execute if score @s Random matches 2 run function mob_manager:skill/enemy/a.black/oryunpos_toroia
