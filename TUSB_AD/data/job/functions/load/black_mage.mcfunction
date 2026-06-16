#> job:load/black_mage
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0.65
particle witch ~ ~1 ~ 0.5 1 0.5 0.1 200 force

title @s times 10 50 20

execute if score @s Job matches 5 run title @s title ["",{"text":"= ","color":"white"},{"text":"B","font":"icon","color":"#1c8dff"},{"text":" 黒魔導士 ","color":"#1c8dff"},{"text":"=","color":"white"}]
execute if score @s Job matches 5 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Black Mage ","color":"#1c8dff"},{"text":"=","color":"white"}]

execute if score @s Job matches 105 run title @s title ["",{"text":"= ","color":"white"},{"text":"B","font":"icon","color":"#1c8dff"},{"text":" 黒魔導士+ ","color":"#1c8dff"},{"text":"=","color":"white"}]
execute if score @s Job matches 105 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Black Mage+ ","color":"#1c8dff"},{"text":"=","color":"white"}]

execute if score @s Job matches 1005 run title @s title ["",{"text":"= ","color":"white"},{"text":"B","font":"icon","color":"#1c8dff"},{"text":" 黒魔導士++ ","color":"#1c8dff"},{"text":"=","color":"white"}]
execute if score @s Job matches 1005 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Black Mage++ ","color":"#1c8dff"},{"text":"=","color":"white"}]
