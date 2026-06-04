#> mob_manager:skill/enemy/pale_rider/
#
# tag PaleRider
#
# @within function mob_manager:skill/invoke

execute if score @s MobCastTime matches 0..10 run function mob_manager:skill/enemy/pale_rider/death_demon
execute if score @s MobCastTime matches 11..19 run function mob_manager:skill/enemy/pale_rider/pest_crop
