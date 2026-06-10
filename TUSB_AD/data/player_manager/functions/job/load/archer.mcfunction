#> player_manager:job/load/archer
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:entity.arrow.hit master @a[distance=..16] ~ ~ ~ 1 0.7 0
particle minecraft:crit ~ ~1 ~ 1 1 1 1 200 force

title @s times 10 50 20
title @s title {"text":"= 狩人 =","color":"red"}
