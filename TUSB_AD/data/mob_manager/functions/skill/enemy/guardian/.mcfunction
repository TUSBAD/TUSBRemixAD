#> mob_manager:skill/enemy/guardian/
#
# team guardian
#
# @within function mob_manager:skill/enemy/g.altair/reduce_mp

# 乱数を取得
data modify storage math: in set value [1,8]
function api:dice/score

execute if score @s Random matches 1 run function mob_manager:skill/enemy/guardian/summon
