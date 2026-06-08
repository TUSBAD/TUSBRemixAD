#> mob_manager:custom_health/log/summon/heal
#
# 
#
# @within function mob_manager:custom_health/heal

# 設置位置用AEC
    summon armor_stand ~ ~1.8 ~ {Marker:1b,Small:1b,Silent:1b,Invisible:1b,Tags:["LogStand", "HealLog", "ShortShow","TypeChecked","SystemEntity"],CustomName:'""',CustomNameVisible:1b}

# スコアを移動
    scoreboard players operation @s ShowHeal += @s Heal

# スコアにより文字を設定
    loot replace block 3500 0 3500 container.0 loot lib:status_makeup/heal

# 表示
    execute positioned ~ ~1.8 ~ as @e[distance=..0.01,type=minecraft:armor_stand,tag=HealLog,limit=1] run data modify entity @s CustomName set from block 3500 0 3500 Items[0].tag.display.Name

# scoreを稼働させる
    execute unless score @s LogRemoveTime matches 1.. run scoreboard players set @s LogRemoveTime 1

# リセット
    data remove block 3500 0 3500 Items
