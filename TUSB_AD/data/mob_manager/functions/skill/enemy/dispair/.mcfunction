#> mob_manager:skill/enemy/dispair/
#
# tag Dispair 
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,5]
function api:dice/score

# ゲヘンナ・フリングホルニ
# ゲヘンナ・ヤールングレイプル
# ニュクス・グングニル
# トランジッション・ハデス

execute if score @s Random matches 1 run function mob_manager:skill/enemy/dispair/gehenna_flinghorn
execute if score @s Random matches 2 run function mob_manager:skill/enemy/dispair/gehenna_yarlungrape
execute if score @s Random matches 3 run function mob_manager:skill/enemy/dispair/nux_gungnir
execute if score @s Random matches 4 run function mob_manager:skill/enemy/dispair/transition_hades
