#> core:clock/main
#
# メインクロック
#
# @within function #minecraft:tick


# 村人更新
    # execute at @a as @e[type=villager,scores={VillagerId=0..},distance=..10] run function remake_remix:villager/

# スポナー更新
    execute as @e[tag=Spawner,type=armor_stand,scores={SpawnerId=-2147483648..2147483647}] at @s run function asset_manager:spawner/

# 奈落防止
    execute as @e[tag=AbyssWarp] at @s positioned ~-0.5 -70 ~-0.5 run tp @s[dy=-29] @p

# エリトラ花火の対策処理
    execute as @a[scores={UseFireworkRocket=1..}] run function player_manager:item_use/firework/

# NoAIの停止 Freeze おのれもやん => NoAIでも動くやつがいるみたいなのだったかも
    execute as @e[tag=Freeze] run data merge entity @s {Motion:[0d,0d,0d]}

# leap(跳躍妨害)
    execute at @e[tag=leap] run effect give @a[distance=..7,predicate=player_manager:effects/is_jump_boost] levitation 10 236
    execute at @e[tag=leap] run effect clear @a[distance=..32] jump_boost

# ボスチーム
    execute as @e[team=Boss] at @s run function mob_manager:boss/tick

# くもの巣を設置してくる害悪
    execute as @e[tag=CanSpin] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:cobweb keep

# 個人ロッカー(印板)
    execute as @e[tag=PersonalLockerSign] at @s run function world_manager:personal_locker/tick/personal_locker_sign

# 盾持ちmob処理
    execute as @e[type=#lib:mob,tag=!ShieldTried,limit=1] run function mob_manager:entity/time_shield/detect_enemy


# CantTp
    tag @a[tag=CantTp] remove CantTp
    execute at @e[tag=CantTpSmall] run tag @a[distance=..8] add CantTp
    execute at @e[tag=CantTpMedium] run tag @a[distance=..16] add CantTp
    execute at @e[tag=CantTpLarge] run tag @a[distance=..32] add CantTp
    execute at @e[tag=Boss_MarkerC] run tag @a[distance=..70] add CantTp

# タイム計測
    #execute as @e[tag=Timer] run scoreboard players add @s LiveTime 1
    #scoreboard players add FreyCielu MP 1