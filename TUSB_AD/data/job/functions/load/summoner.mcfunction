#> job:load/summoner
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:block.portal.ambient master @a[distance=..16] ~ ~ ~ 1 1.7 0
particle minecraft:enchant ~ ~1.5 ~ 0.1 0.6 0.1 4 300 force

title @s times 10 50 20

execute if score @s Job matches 6 run title @s title ["",{"text":"= ","color":"white"},{"text":"S","font":"icon","color":"#ffff09"},{"text":" 召喚士 ","color":"#ffff09"},{"text":"=","color":"white"}]
execute if score @s Job matches 6 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Summoner ","color":"#ffff09"},{"text":"=","color":"white"}]

execute if score @s Job matches 106 run title @s title ["",{"text":"= ","color":"white"},{"text":"S","font":"icon","color":"#ffff09"},{"text":" 召喚士+ ","color":"#ffff09"},{"text":"=","color":"white"}]
execute if score @s Job matches 106 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Summoner+ ","color":"#ffff09"},{"text":"=","color":"white"}]

execute if score @s Job matches 1006 run title @s title ["",{"text":"= ","color":"white"},{"text":"S","font":"icon","color":"#ffff09"},{"text":" 召喚士++ ","color":"#ffff09"},{"text":"=","color":"white"}]
execute if score @s Job matches 1006 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Summoner++ ","color":"#ffff09"},{"text":"=","color":"white"}]
