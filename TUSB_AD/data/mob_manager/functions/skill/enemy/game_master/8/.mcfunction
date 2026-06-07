#> mob_manager:skill/enemy/game_master/8
#
#
#
# @within function mob_manager:skill/enemy/game_master/

# me
    execute as @e[tag=GameMaster,limit=1] run me §l⑧
# title
    execute at @e[tag=GameMaster,limit=1] run title @a[distance=..60,tag=GameMasterBattle] times 10 30 10
    execute at @e[tag=GameMaster,limit=1] run title @a[distance=..60,tag=GameMasterBattle] title {"translate": "§l§4８８８"}
# 武器変更
    data merge entity @e[limit=1,tag=GameMaster] {HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Cue","color":"black","bold":true}'},Enchantments:[{id:"minecraft:punch",lvl:20s}]}},{id:"minecraft:tipped_arrow",Count:64b,tag:{custom_potion_effects:[{Id:7,Amplifier:3b,duration:60},{Id:2,Amplifier:4b,duration:80},{Id:17,Amplifier:3b,duration:80},{Id:25,Amplifier:4b,duration:20}],Potion:"minecraft:empty",CustomPotionColor:0}}]}
# ノクバ耐性削除
    execute at @e[tag=GameMaster,limit=1] as @a[distance=..60,tag=GameMasterBattle] run attribute @s minecraft:generic.knockback_resistance modifier add 3-1-4-6-2 "GM8" -1 multiply
