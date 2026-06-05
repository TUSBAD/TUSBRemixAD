#> mob_manager:skill/enemy/iron_eater/
#
# tag IronEater
#
# @within function mob_manager:skill/enemy/

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

# 強襲命令
# 鼓舞激励

execute if score @s Random matches 1 run function mob_manager:skill/enemy/iron_eater/assault_order
execute if score @s Random matches 2 run function mob_manager:skill/enemy/iron_eater/encouragement
