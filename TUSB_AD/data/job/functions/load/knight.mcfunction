#> job:load/knight
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 0.71 0
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 200 force

title @s times 10 50 20

execute if score @s Job matches 1 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#3cfaff"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Knight[0]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 101 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#3cfaff"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Knight[1]"}]},{"text":"=","color":"white"}]

execute if score @s Job matches 1001 run title @s title ["",{"text":"= ","color":"white"},{"text":"H","font":"icon","color":"#3cfaff"},{"translate":" %1$s ","with": [{"storage": "job:","nbt": "Data.Knight[2]"}]},{"text":"=","color":"white"}]
