#> mob_manager:skill/fake_player/
#
# tag FakePlayer
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,6]
function api:dice/score

# ユグドラシル三種
# ドラウプニル
# フィンブルヴェトル・ラグナロク

execute if score @s Random matches 1 run function mob_manager:skill/enemy/fake_player/dainsleif
execute if score @s Random matches 2 run function mob_manager:skill/enemy/fake_player/levatein
execute if score @s Random matches 3 run function mob_manager:skill/enemy/fake_player/mjolnir/
execute if score @s Random matches 4 run function mob_manager:skill/enemy/fake_player/draupnir
execute if score @s Random matches 5 run function mob_manager:skill/enemy/fake_player/fimbulvetr_ragnarok
