#> mob_manager:skill/magic/acceralation/detect

# markerの周囲にいるプレイヤーに対してkillを実行
execute as @e[type=marker,tag=acceralation] at @s as @a[distance=..1.5] run function mob_manager:skill/magic/acceralation/damage