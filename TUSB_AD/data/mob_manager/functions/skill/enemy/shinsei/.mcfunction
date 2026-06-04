#> mob_manager:skill/enemy/shinsei/
#
# tag Shinsei
#
# @within function mob_manager:skill/invoke

execute if score @s MobCastTime matches 0..2 run function mob_manager:skill/enemy/shinen/teleport
execute if score @s MobCastTime matches 3..6 run function mob_manager:skill/enemy/shinsei/poison_spread
execute if score @s MobCastTime matches 6..9 run function mob_manager:skill/enemy/pale_rider/pest_crop
execute if score @s MobCastTime matches 10..14 run function mob_manager:skill/enemy/shinsei/time_manipulation/
execute if score @s MobCastTime matches 14..17 run function mob_manager:skill/enemy/shinen/reincarnate
execute if score @s MobCastTime matches 18..19 run function mob_manager:skill/enemy/shinsei/acceleration
