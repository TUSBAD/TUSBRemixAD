#> player_manager:effect/invisible/doom_ex/clear
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 5 0.5 1
tellraw @s [{"translate":"%1$sは%2$sから逃れた！","color":"green","with":[{"selector":"@s"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.DoomEX"}]}]
# 明示的にリセット
execute if entity @s[tag=DoomEx] run function #oh_my_dat:please
execute if entity @s[tag=DoomEx] run data remove storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.DoomEX
tag @s remove DoomEx
scoreboard players reset @s DoomEx
