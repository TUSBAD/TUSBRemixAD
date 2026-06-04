#> mob_manager:skill/enemy/boss.extreme/
#
# tag Boss.Extreme 黒発光
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,5]
function api:dice/score

# HEALTHDOWNER
# ファンタズマ・ファイナルデスオーラ
# ファンタズマ・ファイナルデスレイ
# ウインター・ヘキサゴン・シリウス

execute if score @s Random matches 1 run function mob_manager:skill/enemy/boss.extreme/health_downer
execute if score @s Random matches 2 run function mob_manager:skill/enemy/boss.extreme/phantasma_final_deathaura
execute if score @s Random matches 3 run function mob_manager:skill/enemy/boss.extreme/phantasma_final_deathray
execute if score @s Random matches 4 run function mob_manager:skill/enemy/boss.extreme/winter_hexagon_sirius
