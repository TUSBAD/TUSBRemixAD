#> job:load/white_mage
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1 1.08 0
particle firework ~ ~1 ~ 1 1 1 0.1 200 force

title @s times 10 50 20

execute if score @s Job matches 6 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"white"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.WhiteMage[0]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 106 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"white"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.WhiteMage[1]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 1006 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"white"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.WhiteMage[2]"}]},{"text":"=","color":"white"}]
