#> mob_manager:skill/enemy/thanatos/
#
# タナトス
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,3]
function api:dice/score

# デスサイス・ソウルテイカー
# ヘルヘイム・デスクロップ

execute if score @s Random matches 1 run function mob_manager:skill/enemy/thanatos/death_scythe_soul_taker
execute if score @s Random matches 2 run function mob_manager:skill/enemy/thanatos/helheim_desklop
