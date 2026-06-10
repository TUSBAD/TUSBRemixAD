#> mob_manager:custom_health/log/summon/heal
#
# 
#
# @within function mob_manager:custom_health/heal

# 設置位置用AEC
    summon minecraft:text_display ~ ~ ~ {see_through:true,background:0,alignment:center,billboard:center,brightness:{block:15,sky:15},text:'""',Marker:1b,Small:1b,Silent:1b,Invisible:1b,Tags:["LogDisplay", "HealLog", "ShortShow","TypeChecked","SystemEntity"]}

# スコアにより文字を設定
    loot replace block 3500 0 3500 container.0 loot lib:status_makeup/heal

# 表示
    execute positioned ~ ~ ~ as @e[distance=..0.01,type=minecraft:text_display,tag=HealLog,limit=1] run function mob_manager:custom_health/log/show

# scoreを稼働させる
    execute unless score @s LogRemoveTime matches 1.. run scoreboard players set @s LogRemoveTime 1

# リセット
    data remove block 3500 0 3500 Items
