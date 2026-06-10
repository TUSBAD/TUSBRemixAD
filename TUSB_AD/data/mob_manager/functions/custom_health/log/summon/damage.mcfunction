#> mob_manager:custom_health/log/summon/damage
#
# 
#
# @within function mob_manager:custom_health/damage

# 設置位置用AEC
    summon minecraft:text_display ~ ~ ~ {see_through:true,background:0,alignment:center,billboard:center,brightness:{block:15,sky:15},text:'""',Tags:["LogDisplay", "DamageLog", "ShortShow","TypeChecked","SystemEntity"]}

# スコアを移動
    scoreboard players operation @s ShowDamage += @s Damage

# スコアにより文字を設定
    loot replace block 3500 0 3500 container.0 loot lib:status_makeup/damage

# 表示
    execute positioned ~ ~ ~ as @e[distance=..0.01,type=minecraft:text_display,tag=DamageLog,limit=1] run function mob_manager:custom_health/log/show

# scoreを稼働させる
    execute unless score @s LogRemoveTime matches 1.. run scoreboard players set @s LogRemoveTime 1

# リセット
    data remove block 3500 0 3500 Items
