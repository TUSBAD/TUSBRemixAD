#> player_manager:job/load/knight
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 0.78 0
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 200 force

title @s times 10 50 20
title @s title ["",{"text":"= ","color":"white"},{"text":"K","font":"icon","color":"#3cfaff"},{"text":" 剣士 ","color":"#3cfaff"},{"text":"=","color":"white"}]
title @s subtitle ["",{"text":"=","color":"white"},{"text":" Knight ","color":"#3cfaff"},{"text":"=","color":"white"}]
