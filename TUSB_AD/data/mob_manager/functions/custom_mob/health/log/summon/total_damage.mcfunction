#> mob_manager:custom_mob/log/summon/total_damage
#
# 累計ダメージ量の表示
#
# @within function mob_manager:custom_mob/health/log/total

# 召喚
    summon minecraft:text_display ~ ~2.1 ~ {see_through:true,background:0,alignment:center,billboard:center,brightness:{block:15,sky:15},text:'""',Tags:["LogDisplay", "DamageLog", "LongShow","TypeChecked","SystemEntity"],transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.8f,1.8f,1.8f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# スコアを移動
    scoreboard players operation @s Damage = @s ShowDamage

# @s Damageから文字を設定
    loot replace block 3500 0 3500 container.0 loot lib:status_makeup/total_damage

# 表示
    execute positioned ~ ~2.1 ~ as @e[distance=..0.01,type=minecraft:text_display,tag=DamageLog,limit=1] run data modify entity @s text set from block 3500 0 3500 Items[0].tag.display.Name

# リセット
    data remove block 3500 0 3500 Items
    scoreboard players reset @s Damage
    scoreboard players reset @s ShowDamage
