#> player_manager:effect/invisible/doom_ex/give
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

playsound item.trident.thunder player @s ~ ~ ~ 5 1 1
tellraw @s [{"translate":"%1$sは%2$sを受けた！","color":"red","with":[{"selector":"@s"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.DoomEX"}]}]
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.DoomEX set value 1f
scoreboard players set @s DoomEx 61
tag @s add DoomEx
