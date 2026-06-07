#> mob_manager:custom_health/set
#
# 特殊体力mobに変更する処理
#
# @within function mob_manager:entity/type_check

# どのモブか検知し体力を割り当てる
execute store result storage asset:context id int 1 run data get entity @s AbsorptionAmount 1

# idにより体力を設定
function #asset:mob/custom_health

# 無敵化
data modify entity @s AbsorptionAmount set value 2048f
effect give @s resistance infinite 127 true
