#> player_manager:job/load/white_mage
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1 1.08 0
particle firework ~ ~1 ~ 1 1 1 0.1 200 force

title @s times 10 50 20
title @s title ["",{"text":"= ","color":"white"},{"text":"W","font":"icon","color":"white"},{"text":" 白魔導士 ","color":"white"},{"text":"=","color":"white"}]
title @s subtitle ["",{"text":"=","color":"white"},{"text":" White Mage ","color":"white"},{"text":"=","color":"white"}]
