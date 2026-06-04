#> mob_manager:skill/enemy/yuggdrasil/
#
# tag Yuggdrasil
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# 天沼矛
# 天地開闢

execute if score @s Random matches 1 run function mob_manager:skill/enemy/yuggdrasil/amatsukazuchi
execute if score @s Random matches 2 run function mob_manager:skill/enemy/yuggdrasil/the_creation_of_the_universe
