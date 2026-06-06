#> debug:menu/page/status/level/50
#
# 
#
# @within function debug:menu/page/status/level/

scoreboard players set @s Level 50

playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 0.4 0.65 0

title @s times 5 100 20
title @s subtitle [{"text":"現在のレベル : ","italic":false},{"score":{"name":"@s","objective":"Level"},"bold":true,"italic":false}]
title @s title {"text":"LEVEL CHANGE","color":"yellow","bold":false}

function debug:menu/page/status/level/
