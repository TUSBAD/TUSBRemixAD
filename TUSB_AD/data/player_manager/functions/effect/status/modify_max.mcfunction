#> player_manager:effect/status/modify_max
#
# 体力回復
#
# @within function player_manager:death/rise


# Levelに応じてMP最大値をパワー
execute store result score _ Level run scoreboard players get @s Level
scoreboard players set _ _ 50
scoreboard players set @s MPMax 100
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score @s Luck run attribute @s generic.minecraft:luck get 10
scoreboard players operation @s MPMax += @s Luck

#体力リセット
attribute @s generic.max_health modifier remove 0-0-a1-3276-8
attribute @s generic.max_health modifier remove 0-0-a1-1638-4
attribute @s generic.max_health modifier remove 0-0-a1-819-2
attribute @s generic.max_health modifier remove 0-0-a1-409-6
attribute @s generic.max_health modifier remove 0-0-a1-204-8
attribute @s generic.max_health modifier remove 0-0-a1-102-4
attribute @s generic.max_health modifier remove 0-0-a1-51-2
attribute @s generic.max_health modifier remove 0-0-a1-25-6
attribute @s generic.max_health modifier remove 0-0-a1-12-8
attribute @s generic.max_health modifier remove 0-0-a1-6-4
attribute @s generic.max_health modifier remove 0-0-a1-3-2
attribute @s generic.max_health modifier remove 0-0-a1-1-6
attribute @s generic.max_health modifier remove 0-0-a1-0-8
attribute @s generic.max_health modifier remove 0-0-a1-0-4

# MP16383まで対応
scoreboard players set _ _ 131072
scoreboard players operation _ HPMax = @s MPMax
scoreboard players operation _ HPMax -= @s Luck
scoreboard players operation @s HPMax = _ HPMax
scoreboard players operation _ HPMax *= _ _
scoreboard players set _ _ 2

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-3276-8 "HPMaxModifer" 3276.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-1638-4 "HPMaxModifer" 1638.4 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-819-2 "HPMaxModifer" 819.2 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-409-6 "HPMaxModifer" 409.6 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-204-8 "HPMaxModifer" 204.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-102-4 "HPMaxModifer" 102.4 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-51-2 "HPMaxModifer" 51.2 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-25-6 "HPMaxModifer" 25.6 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-12-8 "HPMaxModifer" 12.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-6-4 "HPMaxModifer" 6.4 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-3-2 "HPMaxModifer" 3.2 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-1-6 "HPMaxModifer" 1.6 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-0-8 "HPMaxModifer" 0.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-a1-0-4 "HPMaxModifer" 0.4 add