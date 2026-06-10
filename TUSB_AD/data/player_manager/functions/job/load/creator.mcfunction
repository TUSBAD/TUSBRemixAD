#> player_manager:job/load/creator
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:entity.evoker.cast_spell master @a[distance=..16] ~ ~ ~ 1 1 0
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0 200 force

title @s times 10 50 20
title @s title ["",{"text":"= ","color":"white"},{"text":"F","font":"icon","color":"#00ff40"},{"text":" 創成術士 ","color":"#00ff40"},{"text":"=","color":"white"}]
title @s subtitle ["",{"text":"=","color":"white"},{"text":" Creator ","color":"#00ff40"},{"text":"=","color":"white"}]
