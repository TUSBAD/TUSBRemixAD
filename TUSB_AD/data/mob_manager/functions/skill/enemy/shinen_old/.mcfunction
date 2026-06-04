#> mob_manager:skill/enemy/shinen_old/
#
# tag OldShinen
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# ヘルヘイム・インヴァイド
# ニヴルヘイム・デスクロップ
# ラグナロク・ギャラルホルン

execute if score @s Random matches 1 run function mob_manager:skill/enemy/shinen_king/feul_gelmir
execute if score @s Random matches 2 run function mob_manager:skill/enemy/shinen_king/ragnarok
execute if score @s Random matches 3 run function mob_manager:skill/enemy/shinen_king/walpurgis_nightmare
