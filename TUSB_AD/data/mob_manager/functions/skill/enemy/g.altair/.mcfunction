#> mob_manager:skill/enemy/g.altair/
#
# tag G.Altair
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# 静粛に
# 泡沫となるがいい

execute if score @s Random matches 1 run function mob_manager:skill/enemy/g.altair/reduce_mp
execute if score @s Random matches 2 run function mob_manager:skill/enemy/g.altair/summon
