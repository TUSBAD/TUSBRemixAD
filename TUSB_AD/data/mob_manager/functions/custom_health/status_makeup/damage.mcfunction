#> mob_manager:custom_health/status_makeup/damage
#
# 
#
# @within function mob_manager:custom_health/damage

# 設置位置用AEC
    summon armor_stand ~ ~1.8 ~ {Marker:1b,Small:1b,Silent:1b,Invisible:1b,Tags:["LogStand", "DamageLog", "TypeChecked","SystemEntity"],CustomName:'""',CustomNameVisible:1b}

# スコアを移動
    scoreboard players operation _ Damage = @s Damage

# スコアにより文字を設定
    execute if score _ Damage matches 1.. run loot replace block 3500 0 3500 container.0 loot lib:status_makeup/damege

# 表示
    execute positioned ~ ~1.8 ~ as @e[type=armor_stand,tag=DamageLog,distance=..0.1,limit=1] run data modify entity @s CustomName set from block 3500 0 3500 Items[0].tag.display.Name

# リセット
    scoreboard players reset _ Damage
    data remove block 3500 0 3500 Items
