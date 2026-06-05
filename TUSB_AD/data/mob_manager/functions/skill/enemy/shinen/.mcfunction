#> mob_manager:skill/enemy/shinen/
#
# tag Shinen
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,5]
function api:dice/score

execute if score @s Random matches 1 run function mob_manager:skill/enemy/shinen/teleport
execute if score @s Random matches 2 run function mob_manager:skill/enemy/shinen/pollute
execute if score @s Random matches 3 run function mob_manager:skill/enemy/shinen/abyss_seduce
execute if score @s Random matches 4 run function mob_manager:skill/enemy/shinen/acid_spread
execute if score @s Random matches 5 run function mob_manager:skill/enemy/shinen/reincarnate
