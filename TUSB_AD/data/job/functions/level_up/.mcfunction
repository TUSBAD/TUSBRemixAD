#> job:level_up
# レベルアップ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### レベルが2147483646以下の場合だけレベルアップ
scoreboard players add @s[scores={Level=..2147483646}] Level 1
### 最大MPはレベルに関わらずあがる
scoreboard players add @s MPMax 1
### 最大2147483646
scoreboard players set @s[scores={MPMax=2147483646..}] MPMax 2147483646

### 最大体力計算 = 20 + Level (HPMax < 1021)
execute store result storage player: _ int 2 run scoreboard players get @s Level
execute store result score @s HPMax run data get storage player: _
scoreboard players add @s HPMax 20
scoreboard players set @s[scores={HPMax=1021..}] HPMax 1020

### レベルアップの演出
stopsound @a[distance=..16] master minecraft:ui.toast.challenge_complete
playsound minecraft:ui.toast.challenge_complete master @a[distance=..16] ~ ~ ~ 0.8 2
particle minecraft:happy_villager ~ ~ ~ 1 2 1 0.001 100 normal
summon minecraft:firework_rocket ~ ~0.5 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{}},Tags:[LevelUpFirework]}

### レベルアップ表示
title @s times 5 100 20
title @s subtitle [{"text":"現在のレベル : ","italic":true},{"score":{"name":"*","objective":"Level"},"bold":true,"italic":false}]
title @s title {"text":"LEVEL UP ！","color":"green","bold":true}

### レベル500まで、新しいスキル取得メッセージを表示
execute if entity @s[scores={Level=..500}] run function job:set_display/learn/

# 回復
function player_manager:effect/status/life_to_max
effect give @s instant_health 1 20 true

### 次の経験値の設定
scoreboard players operation @s NextExp = @s Level
execute store result score _ TUSB run data get storage player: Const.ExpMul
scoreboard players operation @s NextExp *= _ TUSB
scoreboard players operation @s ExpToLevel += @s NextExp
execute as @a if score @s ExpToLevel matches 2147483646.. run scoreboard players set @s ExpToLevel 2147483646
