#> world_manager:area/makeup/test
#
#> デバッグエリア演出
#
#@within function area:/entered/**

function world_manager:area/makeup/
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 4 0.5 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"異空世界の舞台裏","bold":true,"color":"#c7c7c7"},{"text":" =","color":"#ffffff"}]
title @s title [{"text":"デバッグ","bold":true,"underlined":true,"color":"#d442ff"},{"text":"エリア","bold":true,"underlined":true,"color":"#ffffff"}]
