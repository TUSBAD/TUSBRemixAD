#> asset:mob/4203.heaven_mage/data/2.data_set

# 最終的にPassengersやスポナーの中身に使える形になればそこまでがどのような形でもいい

# dataを初期化
data remove storage asset: mob

# ここに取ってきたデータを入れる。取得用コマンド：/data get entity @e[type=minecraft:spawner_minecart,limit=1,sort=nearest,distance=..6] SpawnData.entity
data modify storage asset: mob set value {}
# 例：data modify storage asset: mob set value {Passengers: [{CustomName: '{"text":"デイドラ"}', CanBreakDoors: 1b, Health: 200.0f, ArmorItems: [{Id: "minecraft:leather_boots", Count: 65b, tag: {display: {color: 16711935, Name: '{"text":"デイドラのブーツ"}'}, Damage: 0}}, {Id: "minecraft:leather_leggings", Count: 65b, tag: {display: {color: 16711935, Name: '{"text":"デイドラのグリーヴ"}'}, Damage: 0}}, {Id: "minecraft:leather_chestplate", Count: 65b, tag: {display: {color: 16711935, Name: '{"text":"デイドラのキュイラス"}'}, Damage: 0}}, {Id: "minecraft:damaged_anvil", Count: 65b, tag: {display: {Name: '{"text":"デイドラの兜"}'}}}], Attributes: [{Base: 200.0d, Name: "generic.max_health"}, {Base: 1.0d, Name: "generic.knockback_resistance"}, {Base: 10.0d, Name: "generic.attack_damage"}], Id: "minecraft:zombie", active_Effects: [{show_particles: 0b, duration: 2000000000, Id: 14, amplifier: 1b}, {show_particles: 0b, duration: 2000000000, Id: "minecraft:fire_resistance", amplifier: 1b}, {show_particles: 0b, duration: 2000000000, Id: "minecraft:speed", amplifier: 4b}, {show_particles: 0b, duration: 2000000000, Id: "minecraft:jump_boost", amplifier: 10b}], HandItems: [{Id: "minecraft:stone_sword", Count: 65b, tag: {display: {Name: '{"text":"アカヴィリ刀"}'}, Enchantments: [{lvl: 20s, Id: "minecraft:fire_aspect"}, {lvl: 20s, Id: "minecraft:knockback"}], Damage: 0}}], CustomNameVisible: 1b}], Health: 0.0f, DeathTime: 19s, Xp: 0, VillagerData: {profession: "minecraft:farmer", level: 1, type: "minecraft:plains"}, Id: "minecraft:villager"}

# この下のコメント郡は無視！mobを編集する時には使うよ

### idを設定
data modify storage asset: mob.id set value "witch"

### 体力等nbtを設定
# 体力
 data modify storage asset: mob.Health set value 300
# 緩衝体力
# data modify storage asset: mob.AbsorptionAmount set value 20
# AIを持っているか
# data modify storage asset: mob.NoAI set value true
# 無敵か
# data modify storage asset: mob.Invulnerable set value true
# 音を出すか
 data modify storage asset: mob.Silent set value true
# 光るか
# data modify storage asset: mob.Glowing set value true
# デスポーンするか
# data modify storage asset: mob.PersistenceRequired set value true
# 名前
 data modify storage asset: mob.CustomName set value '{"text":"ヘブンメイジ"}'
# 名前を表示するか
# data modify storage asset: mob.CustomNameVisible set value true
# 死亡時のルートテーブル
 data modify storage asset: mob.DeathLootTable set value "usb:entities/heaven/tier1"
# Tags
# data modify storage asset: mob.Tags set value ["example"]
# ポータルに入るまでのクールダウン。"CooldownRequired"というtagを付けているとこのnbtが0の時自動で消滅する
# data modify storage asset: mob.PortalCooldown set value 0
# 可読性や編集の手間を考慮しなければこれらを全て一つに纏めることも可能です


### Attributes
# 最大体力
 data modify storage asset: mob.Attributes append value {Name:generic.max_health, Base:300}
# (近接)攻撃力
# data modify storage asset: mob.Attributes append value {Name:generic.attack_damage, Base:10}
# 移動速度
# data modify storage asset: mob.Attributes append value {Name:generic.movement_speed, Base:0.2}
# 防具値
# data modify storage asset: mob.Attributes append value {Name:generic.armor, Base:20}
# 防具強度
# data modify storage asset: mob.Attributes append value {Name:generic.armor_toughness, Base:12}
# ノックバック耐性(0~1)
# data modify storage asset: mob.Attributes append value {Name:generic.knockback_resistance, Base:1}
# 索敵範囲
# data modify storage asset: mob.Attributes append value {Name:generic.follow_range, Base:64}
# 攻撃のノックバック(0~5)
# data modify storage asset: mob.Attributes append value {Name:generic.attack_knockback, Base:1}
# それぞれの詳しい仕様はwikiなどで調べてください
# 可読性や編集の手間を考慮しなければこれらを全て一つに纏めることも可能です
# Attribute Modifierというものも使用可能。ただし、UUIDを指定する必要がある(めんどい)
# data modify storage asset: mob.Attributes[{Name:generic.max_health}] append value {Modifiers:[{Amount:1,Operation:0,UUId:[I;1525,58721857,885,8867183],Name:"example_modifier"}]}
# Operation:0はn+x+y+z、Operation:1はn×(1+x+y+z)、Operation:2はn×(1+x)×(1+y)×(1+z) Nameは必須ではなさそう


### ArmorItems
    # init
         data modify storage asset: mob.HandItems set value [{},{}]
         data modify storage asset: mob.ArmorItems set value [{},{},{},{}]
 # 防具
        # 頭
            data modify storage asset: mob.ArmorItems[3] set value {Id:"quartz_block",Count:1b}
# 防具のドロップ率を設定します。基本0で [足,脚,胸,頭]
 data modify storage asset: mob.ArmorDropChances set value [0.0F,0.0F,0.0F,0.0F]


### active_Effects
# 直接nbtを指定して追加します
#effect一覧
    #{Name:speed,id:"minecraft:speed"} 移動速度上昇 +lv*20%
    #{Name:slowness,id:"minecraft:slowness"} 移動速度低下 -lv*15%
    #{Name:haste,id:"minecraft:haste"} 採掘速度上昇 +lv*20%
    #{Name:mining_fatigue,id:"minecraft:mining_fatigue"} 採掘速度低下 1*0.3^lv
    #{Name:strength,id:"minecraft:strength"} 攻撃力上昇 +lv*3
    #{Name:instant_health,id:"minecraft:instant_health"} 即時回復 2^lv*2
    #{Name:instant_damage,id:"minecraft:instant_damage"} 即時ダメージ 2^lv*3
    #{Name:jump_boost,id:"minecraft:jump_boost"} 跳躍力上昇 1.25*(lv*0.5)
    #{Name:nausea,id:"minecraft:nausea"} 吐き気
    #{Name:regeneration,id:"minecraft:regeneration"} 再生
    #{Name:resistance,id:"minecraft:resistance"} 耐性 100-lv*20%
    #{Name:fire_resistance,id:"minecraft:fire_resistance"} 火炎耐性
    #{Name:water_breathing,id:"minecraft:water_breathing"} 水中呼吸
    #{Name:invisibility,id:"minecraft:invisibility"} 透明化 player_manager:invisible
    #{Name:blindness,id:"minecraft:blindness"} 盲目
    #{Name:night_vision,id:"minecraft:night_vision"} 暗視
    #{Name:hunger,id:"minecraft:hunger"} 空腹
    #{Name:weakness,id:"minecraft:weakness"} 弱体化 -lv*4
    #{Name:poison,id:"minecraft:poison"} 毒
    #{Name:wither,Id:20} ウィザー
    #{Name:health_boots,Id:21} 体力増強 +lv*4
    #{Name:absorption,Id:22} 緩衝体力増加 +lv*4
    #{Name:saturation,Id:23} 満腹度回復 +lv*1
    #{Name:glowing,Id:24} 発光
    #{Name:levitation,Id:25} 浮遊
    #{Name:luck,Id:26} 運
    #{Name:bad_luck,Id:27} 不運
    #{Name:slow_falling,Id:28} 低速落下
    #{Name:conduit_power,Id:29} コンジットパワー
    #{Name:dolphins_grace,Id:30} イルカの好意
    #{Name:bad_omen,Id:31} 不吉な予感
    #{Name:hero_of_the_village,Id:32} 村の英雄
    #{Name:darkness,Id:33} 暗闇
    # 詳しくはwiki見てね！
# data modify storage asset: mob.active_Effects append value {Id: "minecraft:speed",amplifier:1,duration:600,show_particles:0b}
# data modify storage asset: mob.active_Effects append value {Id:"strength",amplifier:4,duration:600,show_particles:0b}
# 或いは...
# data modify storage asset: mob.active_Effects set value [{Id: "minecraft:speed",amplifier:1,duration:600,show_particles:0b},{Id:"strength",amplifier:4,duration:600,show_particles:0b}]
# このように一行に纏めることも可能。ただし、可読性は下がるかな
# Id,amplifier,duration,show_icon,ShowParticle,ambient
data modify storage asset: mob.Passengers set value [{id:"minecraft:spawner_minecart",SpawnCount:1,SpawnRange:4,Delay:-1,MinSpawnDelay:100,MaxSpawnDelay:150,RequiredPlayerRange:16,SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:villager",DeathTime:19,Tags:["Garbage"],Passengers:[{id:"minecraft:arrow",pickup:0b,Passengers:[{id:"minecraft:area_effect_cloud",Particle:"item_snowball",Radius:3f,duration:100,Tags:["RidingRequired"],effects:[{id:"minecraft:slowness",amplifier:5b,duration:10}]}]}]}}},{weight:1,data:{entity:{id:"minecraft:villager",DeathTime:19,Tags:["Garbage"],Passengers:[{Id:"minecraft:arrow",pickup:0b,Passengers:[{id:"minecraft:area_effect_cloud",Particle:"soul_fire_flame",Radius:3f,duration:100,Tags:["RidingRequired"],effects:[{id:"minecraft:hunger",amplifier:0b,duration:40},{Id:25,amplifier:3b,duration:40}]}]}]}}},{weight:1,data:{entity:{id:"minecraft:villager",DeathTime:19,Tags:["Garbage"],Passengers:[{id:"minecraft:endermite",Silent:1b,PortalCooldown:160,Health:100f,Tags:["CooldownRequired"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"witch",Radius:1f,duration:32767,Tags:["RidingRequired"],effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:4}]}],Active_Effects:[{id:"minecraft:invisibility",amplifier:126b,duration:-1}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.attack_damage,Base:0}]}]}}},{weight:1,data:{entity:{id:"minecraft:villager",DeathTime:19,Tags:["Garbage"],Passengers:[{id:"minecraft:endermite",Silent:1b,PortalCooldown:160,Health:100f,Tags:["CooldownRequired"],Passengers:[{id:"minecraft:potion",Tags:["RidingRequired"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"explosion",Radius:1f,duration:32767,Tags:["RidingRequired"],effects:[{Id:25,amplifier:49b,duration:2}]}],Item:{id:"minecraft:quartz_block",Count:65b}}],Active_Effects:[{id:"minecraft:invisibility",amplifier:126b,duration:-1}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.attack_damage,Base:0}]}]}}}]}]

# スポナーから湧かせるための設定をします
    data modify storage asset: mob.custom_spawn_rules set value {sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}