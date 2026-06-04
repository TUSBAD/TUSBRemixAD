#> mob_manager:skill/enemy/boss.minor/
#
# tag Boss.Minor 赤発光
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,6]
function api:dice/score

# カオス・デスレイン
# フィンブルヴェトル
# ヘルブラッドレイン
# トランジッション・アセンダント

execute if score @s Random matches 1 run function mob_manager:skill/enemy/boss.minor/chaos_death_rain
execute if score @s Random matches 2 run function mob_manager:skill/enemy/boss.minor/fimbulvetr
execute if score @s Random matches 3 run function mob_manager:skill/enemy/boss.minor/hellblood_rain
execute if score @s Random matches 4 run function mob_manager:skill/enemy/boss.minor/supreme_punishment
execute if score @s Random matches 5 run function mob_manager:skill/enemy/boss.minor/transition_ascendant
