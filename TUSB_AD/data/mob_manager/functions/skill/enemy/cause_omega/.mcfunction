#> mob_manager:skill/enemy/cause_omega/
#
# CauseOmega
#
# @within function mob_manager:skill/enemy/

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

# グングニル・デスレイン
execute if score @s Random matches 1 run function mob_manager:skill/enemy/cause_omega/gungnir_death_rain
