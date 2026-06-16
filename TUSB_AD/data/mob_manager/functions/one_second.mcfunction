#> mob_manager:one_second
#
# モブ1秒処理
#
# @within function mob_manager:tick

# -> 10秒処理
## 使用するときにコメントアウトを外してください。
execute if score #Seconds Count matches 0 run function mob_manager:ten_seconds

# 動き停止飛翔物判定
    execute as @e[tag=FlyingObject] if predicate lib:is_flying_object at @s run function mob_manager:entity/check_projectile
    execute as @e[tag=InKasap] at @s run function mob_manager:entity/check_kasap

# Freeze/Melt 居縮とかの
    execute as @e[tag=Freeze] if predicate lib:is_cooldown_0 run function mob_manager:entity/freeze_clear

# 敵スキル発動チェック
    execute as @e[tag=SkillMob] at @s run function mob_manager:skill/

# オーラ(AEC)纏ってる敵のオーラを維持する？
    execute as @e[tag=MobCloud] at @s as @e[dx=0,tag=Enemy,sort=nearest,limit=1] at @s as @e[dy=10,tag=MobCloud] run data modify entity @s Age set value 5

# サバイバルスポナー処理
    execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run kill @e[distance=..0.99,tag=Spawner,limit=2,sort=nearest]

# CooldownRequired 誤差許容長期用
    tag @e[tag=CooldownRequiredLong,predicate=lib:is_cooldown_0] add Garbage

# カートスポナーポータルin対策
    tag @e[type=spawner_minecart,tag=CooldownRequired,predicate=lib:is_cooldown_300] add Garbage

# くもの巣を設置してくる害悪
    execute as @e[tag=CanSpin] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:cobweb keep

# 炎出す奴
    execute as @e[tag=CanFire] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:fire keep

# gamemasterの音
    execute at @e[tag=GameMasterSP,limit=1] run playsound minecraft:entity.warden.heartbeat master @a[distance=..60] ~ ~ ~ 0.6 1 0.0

# 奈落防止
    execute as @e[tag=AbyssWarp] at @s positioned ~-0.5 -70 ~-0.5 run tp @s[dy=-29] @p

# エンティティ数カウント
function mob_manager:count/