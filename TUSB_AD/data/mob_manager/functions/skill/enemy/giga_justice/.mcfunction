#> mob_manager:skill/enemy/giga_justice/
#
# tag GigaJustice
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

# マナスティス
execute if score @s Random matches 1 run function mob_manager:skill/enemy/giga_justice/manastis
