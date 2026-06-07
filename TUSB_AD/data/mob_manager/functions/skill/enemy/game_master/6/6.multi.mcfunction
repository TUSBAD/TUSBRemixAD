#> mob_manager:skill/enemy/game_master/6/6.multi
#
#
#
# @within function mob_manager:skill/enemy/game_master/6/6

# damage
    # 全貫通2048dmg(即死)
        data modify storage score_damage: Argument set value {Damage:2048,EPF:0,BypassArmor:true,BypassResistance:true,Type:"None",DisableParticle:true,DeathCause: '[{"translate":"%1$sは%2$sによって%3$sしまった。","with":[{"selector":"@s"},{"selector":"@e[tag=GameMaster,sort=nearest,limit=1]"},{"translate":"命を弄ばれて","color":"#2C00A6","bold":true}]}]'}
    # attack
        execute at @e[limit=1,tag=GameMaster] as @a[distance=..60,tag=GameMasterBattle,nbt={active_effects:[{id:"minecraft:poison"}]}] run function score_damage:api/attack