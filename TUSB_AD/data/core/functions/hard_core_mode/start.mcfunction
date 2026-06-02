#> core:hard_core_mode/start
#ハードコアモード開始ぃ

data modify storage tusb_remake: settings.hardcore set value 1b
function core:difficulty/apply/hardcore
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.67
