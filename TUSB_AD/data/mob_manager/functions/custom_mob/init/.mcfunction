#> mob_manager:custom_mob/init/
#
# custom_mobの共通init
#
# @within function mob_manager:entity/type_check

# どのモブか検知し体力を割り当てる
    execute store result storage asset:context id int 1 run data get entity @s AbsorptionAmount 1

# idにより体力を設定
    function #asset:custom_mob/init

# custom_health用の設定
    data modify entity @s AbsorptionAmount set value 1024f
    effect give @s resistance infinite 3 true
