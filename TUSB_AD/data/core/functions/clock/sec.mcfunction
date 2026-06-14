#> core:clock/sec
# １秒毎に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# マナリフレッシュ
    #execute as @a[scores={ManaRefresh=0..}] run function job:skill/black_mage/mana_refresh/check

# 連舞 跳躍
    execute as @a[scores={Tsuremai=0..}] at @s run function job:skill/ninja/tsuremai/check
    execute as @a[scores={Choyaku=0..}] at @s run function job:skill/ninja/choyaku/check
    execute as @a[scores={seiyou=0..}] at @s run function job:skill/ninja/seiyou/check
    execute as @a[scores={Syungoku=0..}] at @s run function job:skill/ninja/syungokusatsu/punch/check

# 黙想継続
    execute as @a[tag=Mokuso] at @s run function job:skill/ninja/mokuso/check

# 風切
    execute as @a[scores={Kazakiri=0..}] at @s run function job:skill/ninja/kazakiri/check

# レーダーヴィジョン
    execute as @a[tag=RadarVision,scores={HP=1..}] at @s run function job:skill/archer/radar_vision/check

# 個人ロッカー(印板)から音
    execute at @e[tag=PersonalLockerSign] run playsound minecraft:block.beacon.ambient block @a[distance=..16]

# 動き停止飛翔物判定
    execute as @e[tag=FlyingObject] if predicate lib:is_flying_object at @s run function mob_manager:entity/check_projectile
    execute as @e[tag=InKasap] at @s run function mob_manager:entity/check_kasap

# Freeze/Melt 居縮とかの
    execute as @e[tag=Freeze] if predicate lib:is_cooldown_0 run function core:clock/sec3

# 敵スキル発動チェック
    execute as @e[tag=SkillMob] at @s run function mob_manager:skill/

# 嫌な予感を実行する
    execute as @a[predicate=world_manager:area/skyland,tag=CauseEvent] at @s if score #SecCount Global matches 0.. run function world_manager:event/rank/

# トカルトの処理
    execute unless data storage world: settings{toculting:1b} as @a[predicate=world_manager:area/tocult_colde,gamemode=!spectator] at @s run function world_manager:dimension/tocult/process/

# ゾンビピッグマンのおこる対象を設定する
    execute as @a[gamemode=!spectator] at @s run function world_manager:dimension/nether/angry

# オーラ(AEC)纏ってる敵のオーラを維持する？
    execute as @e[tag=MobCloud] at @s as @e[dx=0,tag=Enemy,sort=nearest,limit=1] at @s as @e[dy=10,tag=MobCloud] run data modify entity @s Age set value 5


# 死の宣告
    execute as @a[tag=Doom] run function player_manager:effect/invisible/doom/default
    execute as @a[tag=DoomEx] run function player_manager:effect/invisible/doom_ex/count

# サバイバルスポナー処理
    execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run kill @e[distance=..0.99,tag=Spawner,limit=2,sort=nearest]

# CooldownRequired 誤差許容長期用
    tag @e[tag=CooldownRequiredLong,predicate=lib:is_cooldown_0] add Garbage

# カートスポナーポータルin対策
    tag @e[type=spawner_minecart,tag=CooldownRequired,predicate=lib:is_cooldown_300] add Garbage

# 祈り(最後の手段/最初に教会に行くまで使えない)を表示
    execute if data storage player: settings{prayable:true} as @a[tag=Pray,scores={Job=1..}] run function player_manager:kill/pray/show

# 炎出す奴
    execute as @e[tag=CanFire] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:fire keep

# エリア境界不正侵入(バリアめり込み)防止
    execute as @a[predicate=player_manager:player] at @s if block ~ ~ ~ #lib:unbreakable run function player_manager:kill/unbreakable_block

# gamemasterの音
    execute at @e[tag=GameMasterSP,limit=1] run playsound minecraft:entity.warden.heartbeat master @a[distance=..60] ~ ~ ~ 0.6 1 0.0
