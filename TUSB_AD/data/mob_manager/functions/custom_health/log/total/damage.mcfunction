#> mob_manager:custom_health/log/total/damage
#
# 
#
# @within function mob_manager:custom_health/reset

# summon
    summon minecraft:armor_stand ~ ~2.1 ~ {Marker:1b,Small:1b,Silent:1b,Invisible:1b,Tags:["LogStand", "DamageLog", "LongShow","TypeChecked","SystemEntity"],CustomName:'""',CustomNameVisible:1b}

# スコアを移動
    scoreboard players operation @s Damage = @s ShowDamage

# スコアにより文字を設定
    loot replace block 3500 0 3500 container.0 loot lib:status_makeup/total_damage

# 表示
    execute positioned ~ ~2.1 ~ as @e[distance=..0.01,type=minecraft:armor_stand,tag=DamageLog,limit=1] run data modify entity @s CustomName set from block 3500 0 3500 Items[0].tag.display.Name

# リセット
    scoreboard players reset @s Damage
    scoreboard players reset @s ShowDamage
    data remove block 3500 0 3500 Items
