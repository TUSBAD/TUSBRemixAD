#> mob_manager:skill/enemy/pale_rider/pest_crop
#
# ペストクロップ
#
# @within function mob_manager:skill/enemy/pale_rider/

me は §4§lペストクロップ§r を唱えた！
execute as @a[distance=..32,nbt={active_effects:[{Id:19}]}] at @s run function player_manager:effect/deadly_poison/
playsound entity.ravager.celebrate master @a[distance=..32] ~ ~ ~ 1 1.8 1
