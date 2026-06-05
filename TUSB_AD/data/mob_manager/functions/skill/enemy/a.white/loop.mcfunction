#> mob_manager:skill/enemy/a.white/loop
#
# オリュンポス・ギガンドマキアのtick処理
#
# @within mob_manager:skill/magic/oryunpos_gigantomakia/

execute at @e[tag=OryunposGigantomakia] run effect give @a[distance=..16] slowness 1 5
execute at @e[tag=OryunposGigantomakia] run effect give @a[distance=..16] jump_boost 1 236
execute if entity @e[tag=OryunposGigantomakia] run schedule function mob_manager:skill/enemy/a.white/loop 1
