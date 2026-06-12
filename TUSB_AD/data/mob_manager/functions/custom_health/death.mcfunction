#> mob_manager:custom_health/death
#
# 死亡させる処理
#
# @within function mob_manager:custom_health/damage

# IDから死亡時処理を呼び出し
data remove storage asset:context id
execute store result storage asset:context id int 1 run scoreboard players get @s MobId
function #asset:custom_mob/death

kill @s
