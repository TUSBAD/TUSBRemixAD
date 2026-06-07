#> core:clock/last
# 毎ティック最後に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# カスタム体力へのダメージ処理
    execute as @e[tag=CustomHealth] at @s if score @s Heal matches 1.. run function mob_manager:custom_health/heal
    execute as @e[tag=CustomHealth] at @s if score @s Damage matches 1.. run function mob_manager:custom_health/damage

# armor_standテキストの処理
    execute as @e[type=armor_stand,tag=LogStand] at @s run function mob_manager:custom_health/status_makeup/tick

# マジックシールドのチェック
    execute as @a[tag=MagicShield] run effect give @s minecraft:resistance 1 100
# ウィンドウォール
    execute as @a[scores={WindWall=0..}] at @s run function job:skill/black_mage/wind_wall/check

# プレイヤーの回復効果
    execute as @a[scores={HealCount=1..3},nbt=!{ActiveEffects:[{Id:10}]}] run function player_manager:health/heal/small
    execute as @a[scores={HealCount=4..},nbt=!{ActiveEffects:[{Id:6}]}] run function player_manager:health/heal/large

# HP記録
    execute as @a[scores={HPChanging=0..}] run scoreboard players operation @s HP = @s HPChanging
    scoreboard players reset @a[scores={HPChanging=0..}] HPChanging
# 満腹度記録
    execute as @a[scores={FoodChanging=0..}] run scoreboard players operation @s Food = @s FoodChanging
    scoreboard players reset @a[scores={FoodChanging=0..}] FoodChanging
# 満腹度制限
    execute as @a[scores={FoodMax=0..}] run function player_manager:food/limit

# 死亡トリガー TODO
    scoreboard players reset @a[scores={Deaths=1..}] Deaths
# 被ダメージトリガーリセット TODO
    scoreboard players reset @a[scores={DamageTaken=0..}] DamageTaken
    scoreboard players reset @a[scores={DamageResisted=0..}] DamageResisted
