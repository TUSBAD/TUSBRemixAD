#> mob_manager:skill/enemy/shinsei_king/
# スキル抽選function

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

execute if score @s Random matches 1 run function mob_manager:skill/enemy/shinsei_king/set_1

execute if score @s Random matches 2 run function mob_manager:skill/enemy/shinsei_king/set_2
