#> mob_manager:skill/enemy/g.canopus/
#
# tag G.Canopus
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,8]
function api:dice/score

# 痛くても…我慢してください…！
# まだ…頑張れる！
# リゲルさんの力、お借りします...！
# 私の全力…！

execute if score @s Random matches 1..4 run function mob_manager:skill/enemy/g.canopus/damage_effect
execute if score @s Random matches 6 run function mob_manager:skill/enemy/g.canopus/absorption
execute if score @s Random matches 7 run function mob_manager:skill/enemy/g.canopus/summon
execute if score @s Random matches 8 run function mob_manager:skill/enemy/g.canopus/fatal_death
