#> makeup:area/entered/tradeisland
#
#> 交易島演出
#
#@within function area:/entered/**

function makeup:area/entered/
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 4 1.15 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"異空世界","bold":true,"color":"#ff44e8"},{"text":"の","bold":true,"color":"#ffffff"},{"text":"安息地","bold":true,"color":"#6ae1ff"},{"text":" =","color":"#ffffff"}]
title @s title {"text":"交 易 島","color":"#70f158","bold":true,"underlined":true}