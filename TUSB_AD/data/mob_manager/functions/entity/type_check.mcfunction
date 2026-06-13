#> mob_manager:entity/type_check
# 新しいエンティティのタイプをチェックして、いろいろ設定する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## Enemy := team=!FriendlyTeam & type=lib:mob & Invulnerable:false

# 無敵じゃない生物で、味方として出現していないものは、敵のタグをつけておく
    tag @s[team=!FriendlyTeam,type=#lib:mob,predicate=!lib:is_invulnerable] add Enemy
# ニフラムの対象
    tag @s[tag=Enemy] add Poofable
# オーラを纏ってる場合は、オーラを初期する
    execute as @s[tag=Enemy] if predicate mob_manager:typecheck_aec at @s run data merge entity @s {Tags:[MobCloud,TypeChecked],Duration:28,Age:5,WaitTime:5,DurationOnUse:0,RadiusOnUse:0f,RadiusPerTick:0f,ReapplicationDelay:0}
    #execute if entity @s[tag=Enemy,nbt={Passengers:[{id:"minecraft:area_effect_cloud"}]}] at @s as @e[dy=10,type=minecraft:area_effect_cloud,tag=!TypeChecked] run data merge entity @s {Tags:[MobCloud,TypeChecked],Duration:28,Age:5,WaitTime:5,DurationOnUse:0,RadiusOnUse:0f,RadiusPerTick:0f,ReapplicationDelay:0}

# FlyingObject
# ウィンドウォール？
    tag @s[type=#lib:projectile] add Driftable
    tag @s[type=#lib:arrow] add Arrow
    tag @s[type=#lib:wind_wall_alpha] add DriftableA

# Shulkerが弾を出したらダメージを受ける
    execute as @s[type=shulker_bullet] at @s run effect give @e[distance=..5,type=minecraft:shulker,sort=nearest,limit=1] minecraft:wither 1 1 true

# スポナーのタイプは２種類(時間で消える or 地面に付くと消える)
    tag @s[type=minecraft:spawner_minecart,predicate=!lib:is_cooldown_0] add CooldownRequired
    tag @s[type=minecraft:spawner_minecart,tag=!CooldownRequired] add FloatingRequired

# 自然発生した村人は、特定のアイテムしか売ってくれない
    execute as @s[type=villager] if predicate mob_manager:is_vanilla_villager run data merge entity @s {VillagerData:{profession:"minecraft:shepherd",level:5},Offers:{Recipes:[{maxUses:7,buy:{id:"minecraft:white_wool",Count:22b},sell:{id:"minecraft:emerald",Count:1b},uses:0,rewardExp:1b},{maxUses:7,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:shears",Count:1b},uses:0,rewardExp:1b}]}}

# TNTは即爆
    execute as @s[type=minecraft:tnt] run data merge entity @s {Fuse:20s,Motion:[0d,0d,0d],block_state:{Name:"minecraft:diamond_block"}}

# CustomMobの処理
    execute as @s[tag=CustomMob] run function mob_manager:custom_mob/init/

# 強さ補正
    execute if data storage core: difficulty_modifier{speed:1} run effect give @s[team=,type=!player] minecraft:speed infinite 0 true
    execute if data storage core: difficulty_modifier{speed:2} run effect give @s[team=,type=!player] minecraft:speed infinite 1 true
    execute if data storage core: difficulty_modifier{speed:3} run effect give @s[team=,type=!player] minecraft:speed infinite 2 true
    execute if data storage core: difficulty_modifier{speed:4} run effect give @s[team=,type=!player] minecraft:speed infinite 3 true
    execute if data storage core: difficulty_modifier{speed:5} run effect give @s[team=,type=!player] minecraft:speed infinite 4 true
    execute if data storage core: difficulty_modifier{resistance:1} run effect give @s[team=,type=!player] minecraft:resistance infinite 0 true
    execute if data storage core: difficulty_modifier{resistance:2} run effect give @s[team=,type=!player] minecraft:resistance infinite 1 true
    execute if data storage core: difficulty_modifier{resistance:3} run effect give @s[team=,type=!player] minecraft:resistance infinite 2 true
    execute if data storage core: difficulty_modifier{resistance:4} run effect give @s[team=,type=!player] minecraft:resistance infinite 3 true
    execute if data storage core: difficulty_modifier{strength:1} run effect give @s[team=,type=!player] minecraft:strength infinite 1 true
    execute if data storage core: difficulty_modifier{strength:5} run effect give @s[team=,type=!player] minecraft:strength infinite 5 true
    execute if data storage core: difficulty_modifier{strength:10} run effect give @s[team=,type=!player] minecraft:strength infinite 10 true
    execute if data storage core: difficulty_modifier{strength:20} run effect give @s[team=,type=!player] minecraft:strength infinite 20 true
    execute if data storage core: difficulty_modifier{maxhealth:1} run effect give @s[team=,type=!player] minecraft:health_boost infinite 9 true
    execute if data storage core: difficulty_modifier{maxhealth:10} run effect give @s[team=,type=!player] minecraft:health_boost infinite 19 true
    execute if data storage core: difficulty_modifier{maxhealth:25} run effect give @s[team=,type=!player] minecraft:health_boost infinite 39 true
    execute if data storage core: difficulty_modifier{maxhealth:50} run effect give @s[team=,type=!player] minecraft:health_boost infinite 69 true

# ゾンビピッグマンは常に怒らせる
    execute as @s[type=minecraft:zombified_piglin] run data merge entity @s {AngerTime:2147483647}

# クリーパーの爆発を早める
    execute as @s[type=minecraft:creeper] if predicate mob_manager:is_fuse_30s run data merge entity @s {Fuse:15s}
# クリーパー産のAECは消す
    kill @s[type=minecraft:area_effect_cloud,predicate=mob_manager:radius_per_tick_creeper]

# 応急処置 TODO
    effect clear @s[type=stray] invisibility
    kill @s[type=item,predicate=lib:overstack_item]
    execute as @s[type=wandering_trader] run function mob_manager:entity/limit_sapling

# 自然湧きじゃないスライム系のチェック
    tag @s[type=#lib:slimey,predicate=!player_manager:effects/has_absorptionamount] add FromSpawner

# summon skeleton ~ ~ ~ {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}

# mob fix
    data modify storage mob: CustomName set from entity @s CustomName
    execute if data storage mob: {CustomName:'{"text":"バンパーストーム"}'} run function mob_manager:entity/mob_fix/bumper_storm
    execute if data storage mob: {CustomName:'{"text":"ﾅﾋﾞｹﾞｰﾄ"}'} run function mob_manager:entity/mob_fix/navigate
    execute if data storage mob: {CustomName:'{"text":"SAT"}'} on passengers run ride @s dismount
    data remove storage mob: CustomName
# チームに登録
    team join Enemy @s[tag=Enemy,predicate=!mob_manager:is_boss_team]

### チェック済みにする
tag @s add TypeChecked
