#> player_manager:effect/invisible/doom_ex/count
#
# 致死宣告カウント
#
# @within function core:clock/sec

# 致死の宣告カウントダウン
scoreboard players remove @s DoomEx 1

# 致死の宣告カウントメッセージ
title @s[scores={DoomEx=61..121}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"score":{"name":"@s","objective":"DoomEx"},"color":"#ffff00","bold":false,"italic":false},{"text":"秒","color":"gold","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomEx=31..60}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"score":{"name":"@s","objective":"DoomEx"},"color":"#ff5b1e","bold":false,"italic":false},{"text":"秒","color":"red","bold":true,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomEx=11..30}] subtitle [{"text":"☠ ","color":"#cc0000","italic":false},{"text":"< ","color":"dark_green","bold":true},{"score":{"name":"@s","objective":"DoomEx"},"color":"#fe144f","bold":false,"italic":false},{"text":"秒","color":"light_purple","bold":true,"italic":false},{"text":" >","color":"dark_green","bold":true,"italic":false},{"text":" ☠","color":"#cc0000","italic":false}]
title @s[scores={DoomEx=11..30}] title ""
title @s[scores={DoomEx=0..10}] title [{"text":"☠ ","color":"#7500df","italic":false},{"text":"< ","color":"dark_red","bold":true},{"score":{"name":"@s","objective":"DoomEx"},"color":"#ff0000","bold":true,"italic":false},{"text":" >","color":"dark_red","bold":true,"italic":false},{"text":" ☠","color":"#7500df","italic":false}]
title @s[scores={DoomEx=0..10}] subtitle ""

# 効果音
playsound minecraft:ui.button.click player @s[scores={DoomEx=61..121}] ~ ~ ~ 0.5 2 0.5
playsound minecraft:block.bell.use player @s[scores={DoomEx=21..60}] ~ ~ ~ 0.5 0.5 0.5
playsound minecraft:block.conduit.deactivate player @s[scores={DoomEx=0..20}] ~ ~ ~ 0.25 0.15 0.5
playsound minecraft:entity.elder_guardian.curse player @s[scores={DoomEx=0..20}] ~ ~ ~ 0.25 1.5 0.5
playsound minecraft:item.shield.break player @s[scores={DoomEx=0..20}] ~ ~ ~ 0.25 0 0.5
execute if score @s DoomEx matches 0..121 run function player_manager:effect/invisible/doom_ex/damage

# 明示的にリセット
tag @s[scores={DoomEx=..0}] remove DoomEx
scoreboard players reset @s[scores={DoomEx=..0}] DoomEx