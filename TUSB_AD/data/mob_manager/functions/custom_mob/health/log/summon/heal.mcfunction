#> mob_manager:custom_mob/health/log/summon/heal
#
# 回復量の表示
#
# @within function mob_manager:custom_mob/health/heal

# 召喚
    summon minecraft:text_display ~ ~ ~ {see_through:true,background:0,alignment:center,billboard:center,brightness:{block:15,sky:15},text:'""',Tags:["LogDisplay", "HealLog", "ShortShow","TypeChecked","SystemEntity"]}

# @s Healから文字を設定
    loot replace block 3500 0 3500 container.0 loot lib:status_makeup/heal

# 表示
    execute positioned ~ ~ ~ as @e[distance=..0.01,type=minecraft:text_display,tag=HealLog,limit=1] run function mob_manager:custom_mob/health/log/show

# リセット
    data remove block 3500 0 3500 Items
