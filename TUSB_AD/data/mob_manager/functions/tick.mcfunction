#> mob_manager:tick
#
# MobTick処理
#
# @within function core:tick

# -> 1秒処理
    execute if score #Ticks Count matches 0 run function mob_manager:one_second

# TypeCheck 新しくでてきた敵に色々設定するやつ
    execute as @e[type=!#lib:ignore_type_check,type=!area_effect_cloud,tag=!TypeChecked] at @s run function mob_manager:entity/type_check

## TODO
#execute as @e[type=area_effect_cloud,tag=!TypeChecked] at @s run function mob_manager:entity/type_check

# 魔法のブロックの共通処理
    execute as @e[type=item_frame,tag=MagicBlock] at @s run function job:skill/summoner/magic_block/check

# スポナー更新
    execute as @e[tag=Spawner,type=armor_stand,scores={SpawnerId=-2147483648..2147483647}] at @s run function asset_manager:spawner/


# NoAIの停止 Freeze おのれもやん => NoAIでも動くやつがいるみたいなのだったかも
    execute as @e[tag=Freeze] run data merge entity @s {Motion:[0d,0d,0d]}

# leap(跳躍妨害)
    execute at @e[tag=leap] run effect give @a[distance=..7,predicate=player_manager:effects/is_jump_boost] levitation 10 236
    execute at @e[tag=leap] run effect clear @a[distance=..32] jump_boost

# ボスチーム
    execute as @e[team=Boss] at @s run function mob_manager:boss/tick


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


# カスタム体力へのダメージ処理
    execute as @e if predicate lib:custom_mob at @s run function mob_manager:custom_mob/health/

# Logテキストの処理
    execute as @e if predicate lib:log_stand at @s run function mob_manager:custom_mob/health/log/display_tick
