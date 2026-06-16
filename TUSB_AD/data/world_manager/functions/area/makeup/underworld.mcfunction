#> makeup:area/entered/underworld
#
#> 地下世界演出
#
#@within function area:/entered/**

function makeup:area/entered/
playsound minecraft:ambient.cave_12 master @s ~ ~ ~ 1.0 0.5
playsound minecraft:ambient.cave_12 master @s ~ ~ ~ 1.0 1.0
playsound minecraft:ambient.cave_12 master @s ~ ~ ~ 1.0 0.501
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"菌糸蔓延る","bold":true,"color":"#586bfe"},{"text":"常闇","bold":true,"color":"#787878"},{"text":"の地","bold":true,"color":"#586bfe"},{"text":" =","color":"#ffffff"}]
title @s title {"text":"地下世界","color":"#787878","bold":true,"underlined":true}