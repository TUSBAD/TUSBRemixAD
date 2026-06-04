#> mob_manager:skill/enemy/game_master/2/1
#
# 
#
# @within function mob_manager:skill/enemy/game_master/2/

# me
    execute as @e[limit=1,tag=GameMaster] run me §l表だ、回復してあげよう。
# sound
    execute at @e[limit=1,tag=GameMaster] run playsound entity.cat.ambient master @a[distance=..60]
# heal
    execute at @e[limit=1,tag=GameMaster] as @a[distance=..60,tag=GameMasterBattle] run scoreboard players set @s HealCount 40
