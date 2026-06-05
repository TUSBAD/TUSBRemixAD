#> mob_manager:skill/enemy/g.rigel/
#
# tag G.Rigel
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# 千呪の戒め
# 永劫に帰せ

execute if score @s Random matches 1 run function mob_manager:skill/enemy/g.rigel/fatal_death
execute if score @s Random matches 2 run function mob_manager:skill/enemy/g.rigel/kill_64
