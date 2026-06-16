#> makeup:area/entered/skyland_low
#
#> 通常世界下層演出
#
#@within function area:/entered/**

function makeup:area/entered/
execute at @s run playsound entity.illusioner.prepare_blindness master @s ~ ~ ~ 4 0.5 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"下 層","bold":true,"color":"#c7c7c7"},{"text":" =","color":"#ffffff"}]
title @s title [{"text":"新 ","color":"#d442ff","bold":true,"underlined":true},{"text":"通常世界","color":"#ffffff","bold":true,"underlined":true}]
