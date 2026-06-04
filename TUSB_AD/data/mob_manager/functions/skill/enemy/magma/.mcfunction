#> mob_manager:skill/enemy/magma/
#
# tag Magma
#
# @within function mob_manager:skill/invoke

execute if score @s MobCastTime matches 0..7 run function mob_manager:skill/enemy/magma/magma_explode
execute if score @s MobCastTime matches 8..19 run function mob_manager:skill/enemy/magma/escape
