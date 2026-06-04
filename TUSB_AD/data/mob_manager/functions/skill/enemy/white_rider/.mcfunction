#> mob_manager:skill/enemy/white_rider/
#
# tag WhiteRider
#
# @within function mob_manager:skill/invoke

execute if score @s MobCastTime matches 0..10 run function mob_manager:skill/enemy/white_rider/day_of_death
execute if score @s MobCastTime matches 11..19 run function mob_manager:skill/enemy/white_rider/rule_through_victory
