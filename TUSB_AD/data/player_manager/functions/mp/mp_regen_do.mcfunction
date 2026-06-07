#> player_manager:mp/mp_regen_do
#
# #MPの自然回復処理
#
# #TUSBv13と同形式を採用

# マナリフレッシュ
scoreboard players operation _ _ = @s ManaRefresh
scoreboard players set _ Calc 10
scoreboard players operation _ _ %= _ Calc
scoreboard players add _ _ 1

# 0でMP回復
scoreboard players operation @s MPRecovery -= _ _

# MPウェイトリセット
scoreboard players add @s MPHealingWait 2000
scoreboard players set _ _ 1
scoreboard players operation @s MPHealingWait > _ _

# マナリフレッシュカウントダウン
scoreboard players remove @s[scores={ManaRefresh=10..}] ManaRefresh 10
scoreboard players reset @s[scores={ManaRefresh=..10}] ManaRefresh

# MP回復反映
scoreboard players set _ _ 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run scoreboard players set @s MPRecovery 0
execute store success score _ _ if score @s MP < @s MPMax run scoreboard players operation @s MP -= @s MPRecovery
execute if score _ _ matches 1 run scoreboard players operation @s MP < @s MPMax
execute if score _ _ matches 0 store success score _ _ if score @s MP > @s MPMax
execute if score _ _ matches 0 store result score _ Calc run xp query @s levels
execute if score _ _ matches 0 store success score _ _ if score @s MP < _ Calc
scoreboard players reset @s MPRecovery

# MPバー反映
execute if score _ _ matches 1 run function player_manager:mp_bar/set
