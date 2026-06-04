#> player_manager:effect/invisible/doom/give
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

playsound item.trident.thunder player @s ~ ~ ~ 5 1 1
tellraw @s [{"translate":"%1$sは%2$sを受けた！","color":"red","with":[{"selector":"@s"},{"interpret":true,"storage":"tusb_remake:","nbt":"BadEffectsName.Doom"}]}]
execute if score #Difficulty Difficulty matches 1..3 run scoreboard players set @s Doom 11
execute if score #Difficulty Difficulty matches 1 run scoreboard players set @s DoomSecond 3
execute if score #Difficulty Difficulty matches 4 run scoreboard players set @s Doom 6
execute if score #Difficulty Difficulty matches 2..4 run scoreboard players set @s DoomSecond 1
tag @s add Doom
