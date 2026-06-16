#> job:load/ninja
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.


playsound minecraft:entity.firework_rocket.large_blast_far master @a[distance=..16] ~ ~ ~ 1 0.7 0
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 200 force

title @s times 10 50 20

execute if score @s Job matches 2 run title @s title ["",{"text":"= ","color":"white"},{"text":"N","font":"icon","color":"#a433ff"},{"text":" 忍者 ","color":"#a433ff"},{"text":"=","color":"white"}]
execute if score @s Job matches 2 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Ninja ","color":"#a433ff"},{"text":"=","color":"white"}]

execute if score @s Job matches 102 run title @s title ["",{"text":"= ","color":"white"},{"text":"N","font":"icon","color":"#a433ff"},{"text":" 忍者 ","color":"#a433ff"},{"text":"=","color":"white"}]
execute if score @s Job matches 102 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Ninja+ ","color":"#a433ff"},{"text":"=","color":"white"}]

execute if score @s Job matches 1002 run title @s title ["",{"text":"= ","color":"white"},{"text":"N","font":"icon","color":"#a433ff"},{"text":" 忍者 ","color":"#a433ff"},{"text":"=","color":"white"}]
execute if score @s Job matches 1002 run title @s subtitle ["",{"text":"=","color":"white"},{"text":" Ninja++ ","color":"#a433ff"},{"text":"=","color":"white"}]