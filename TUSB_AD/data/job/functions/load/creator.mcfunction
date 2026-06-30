#> job:load/creator
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:entity.evoker.cast_spell master @a[distance=..16] ~ ~ ~ 1 1 0
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0 200 force

title @s times 10 50 20

execute if score @s Job matches 8 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#00ff40"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Creator[0]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 108 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#00ff40"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Creator[1]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 1008 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#00ff40"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Creator[2]"}]},{"text":"=","color":"white"}]
