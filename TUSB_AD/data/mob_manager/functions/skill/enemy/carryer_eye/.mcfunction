#> mob_manager:skill/enemy/carryer_eye/
#
# CarryerEye
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,3]
function api:dice/score

# スクリームフロムヘル
# ヴァルプルギス・ロキ

execute if score @s Random matches 1 run function mob_manager:skill/enemy/carryer_eye/scream_from_hell
execute if score @s Random matches 2 run function mob_manager:skill/enemy/carryer_eye/walpurgis_night
