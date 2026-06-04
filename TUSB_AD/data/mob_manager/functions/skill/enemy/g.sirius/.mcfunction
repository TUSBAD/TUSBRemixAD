#> mob_manager:skill/enemy/g.sirius/
#
# tag G.Sirius
#
# @within function mob_manager:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,9]
function api:dice/score

# 輪転百劫
# 十惑消却
# 諸相浄化
# 六塵一拭
# 正名神誕
# 生き永らえるのは僕だけだ
# 頭が高いぞ
# 時空よ、逆巻け！
# 生の終演

execute if score @s Random matches 1 run function mob_manager:skill/enemy/g.sirius/damage_aec
execute if score @s Random matches 2 run function mob_manager:skill/enemy/g.sirius/damage_effect
execute if score @s Random matches 3 run function mob_manager:skill/enemy/g.sirius/fatal_death
execute if score @s Random matches 4 run function mob_manager:skill/enemy/g.sirius/health_downer
execute if score @s Random matches 5 run function mob_manager:skill/enemy/g.sirius/kill_64
execute if score @s Random matches 6 run function mob_manager:skill/enemy/g.sirius/player_tp
execute if score @s Random matches 7 run function mob_manager:skill/enemy/g.sirius/reduce_mp
execute if score @s Random matches 8 run function mob_manager:skill/enemy/g.sirius/skill_recast
execute if score @s Random matches 9 run function mob_manager:skill/enemy/g.sirius/summon
