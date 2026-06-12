#> asset:custom_mob/0001.example/init/
#
# 召喚時処理
#
# @within function asset:custom_mob/0001.example/trigger/init/

# IDをセット
scoreboard players set @s MobId 1

# text
me 「生まれたよん」

# 体力をセット
scoreboard players set @s MaxCustomHealth 10000
scoreboard players set @s CustomHealth 10000
