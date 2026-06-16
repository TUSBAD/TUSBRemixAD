#> job:load/lancer
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 1 1 0
particle minecraft:wax_on ~ ~1 ~ 1 1 1 0 200 force

title @s times 10 50 20

execute if score @s Job matches 7 run title @s title ["",{"text":"= ","color":"white"},{"text":"L","font":"icon","color":"#ff2a2a"},{"text":" 槍術士 ","color":"#ff2a2a"},{"text":"=","color":"white"}]
execute if score @s Job matches 7 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Lancer ","color":"#ff2a2a"},{"text":"=","color":"white"}]

execute if score @s Job matches 107 run title @s title ["",{"text":"= ","color":"white"},{"text":"L","font":"icon","color":"#ff2a2a"},{"text":" 槍術士+ ","color":"#ff2a2a"},{"text":"=","color":"white"}]
execute if score @s Job matches 107 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Lancer+ ","color":"#ff2a2a"},{"text":"=","color":"white"}]

execute if score @s Job matches 1007 run title @s title ["",{"text":"= ","color":"white"},{"text":"L","font":"icon","color":"#ff2a2a"},{"text":" 槍術士++ ","color":"#ff2a2a"},{"text":"=","color":"white"}]
execute if score @s Job matches 1007 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Lancer++ ","color":"#ff2a2a"},{"text":"=","color":"white"}]
