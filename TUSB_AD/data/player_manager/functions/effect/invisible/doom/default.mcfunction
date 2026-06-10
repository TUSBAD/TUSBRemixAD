#> player_manager:effect/invisible/doom/default

# 死の宣告の処理

## 死の宣告カウントダウン
scoreboard players remove @s DoomSecond 1
scoreboard players remove @s[scores={DoomSecond=..0}] Doom 1

# カウントメッセージ
title @s[scores={DoomSecond=..0,Doom=10..}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"#fe144f","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"score":{"name":"*","objective":"Doom"},"color":"#fe144f","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomSecond=..0,Doom=0..9}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"#fe144f","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"0","color":"#fe144f","bold":false,"italic":false},{"score":{"name":"*","objective":"Doom"},"color":"#fe144f","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]

# カウント効果音
playsound block.comparator.click player @s[scores={DoomSecond=..0,Doom=4..10}] ~ ~ ~ 1 1 1
playsound minecraft:block.conduit.deactivate player @s[scores={DoomSecond=..0,Doom=0..3}] ~ ~ ~ 1 0.15 0.5
playsound minecraft:entity.elder_guardian.curse player @s[scores={DoomSecond=..0,Doom=0..3}] ~ ~ ~ 1 1.5 0.5
playsound minecraft:item.shield.break player @s[scores={DoomSecond=..0,Doom=0..3}] ~ ~ ~ 1 0 0.5

# カウント間隔設定
execute if score #Difficulty Difficulty matches 1 run scoreboard players set @s[scores={DoomSecond=..0}] DoomSecond 3
execute if score #Difficulty Difficulty matches 2..4 run scoreboard players set @s[scores={DoomSecond=..0}] DoomSecond 1
execute if score @s Doom matches ..0 run function player_manager:effect/invisible/doom/death

# 明示的にリセット
tag @s[scores={Doom=..0}] remove Doom
scoreboard players reset @s[scores={Doom=..0}] Doom
