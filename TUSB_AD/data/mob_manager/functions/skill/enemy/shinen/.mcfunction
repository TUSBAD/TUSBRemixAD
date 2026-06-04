#> mob_manager:skill/enemy/shinen/
#
# tag Shinen
#
# @within function mob_manager:skill/invoke

execute if score @s MobCastTime matches 0..4 run function mob_manager:skill/enemy/shinen/teleport
execute if score @s MobCastTime matches 5..7 run function mob_manager:skill/enemy/shinen/pollute
execute if score @s MobCastTime matches 8..10 run function mob_manager:skill/enemy/shinen/abyss_seduce
execute if score @s MobCastTime matches 11..14 run function mob_manager:skill/enemy/shinen/acid_spread
execute if score @s MobCastTime matches 15..19 run function mob_manager:skill/enemy/shinen/reincarnate
