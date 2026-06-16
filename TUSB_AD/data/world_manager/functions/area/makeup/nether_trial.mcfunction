#> makeup:area/entered/nether_trial
#
#> ネザーアスレ演出
#
#@within function area:/entered/**

function makeup:area/entered/
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 4 0.5 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"浄火","bold":true,"color":"#000000"},{"text":"燃","bold":true,"color":"#a31000"},{"text":"ゆる地の","bold":true,"color":"#000000"},{"text":"技能試練","bold":true,"color":"#a31000"},{"text":" =","color":"#ffffff"}]
title @s title {"text":" ネザーアスレ ","color":"#a42900","bold":true,"underlined":true}