#> mob_manager:skill/enemy/red_rider/
#
# RedRider
#
# @within function mob_manager:skill/invoke

execute if score @s MobCastTime matches 0..10 run function mob_manager:skill/enemy/red_rider/dead_soldiers
execute if score @s MobCastTime matches 11..19 run function mob_manager:skill/enemy/red_rider/battle_continues/
