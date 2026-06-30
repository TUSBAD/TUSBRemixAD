#> job:load/archer
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:entity.arrow.hit master @a[distance=..16] ~ ~ ~ 1 0.7 0
particle minecraft:crit ~ ~1 ~ 1 1 1 1 200 force

title @s times 10 50 20

execute if score @s Job matches 3 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#ff8f59"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Archer[0]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 103 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#ff8f59"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Archer[1]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 1003 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#ff8f59"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Archer[2]"}]},{"text":"=","color":"white"}]
