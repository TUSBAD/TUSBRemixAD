#> player_manager:tick
#
# プレイヤー関係tick処理
# 最初にas_@aしているので、@sで始められます。
# @within function core:tick

# -> 1秒処理
    execute if score #Ticks Count matches 0 run function player_manager:one_second

# -> 0.5秒処理
    execute if score #Ticks Count matches 10 run function player_manager:half_second

# ワープポータル処理待ちの時はチェックする
    execute if entity @s[tag=PortalCheck] run function world_manager:warp/

# 強制的に消したいアイテムをドロップしていたら消す(インベントリ内の場合は進捗で消す)
    execute if entity @s[scores={Drop=1..}] anchored eyes positioned ^ ^ ^ run kill @e[distance=..2,type=item,predicate=lib:force_vanishing]
    scoreboard players reset @s Drop

# アスレチックのバードケージでエリトラの飛べるタイミングを昔と同じにする
    execute if entity @s[predicate=player_manager:bird_in_cage] run function world_manager:dimension/nether/athletic/bird_cage/modify_elytra

# 不滅
# TypeCheckedされると不都合なのでここ
# 使用しても消えないようになるエンチャント
    tag @s[predicate=player_manager:has_undying] add Undying
    execute if entity @s[tag=Undying] unless predicate player_manager:open_container run function player_manager:custom_item/undying/
    tag @s[tag=Undying] remove Undying
    tag @s[predicate=player_manager:has_undying] add Undying

# 紙を拾ったプレイヤーがいたらトレードイベント(職業変更/釣りチケット)判定を呼び出す
    execute if entity @s[scores={PickupPaper=1..}] run scoreboard players operation @s TradedVillager >< @s PickupPaper
    execute if entity @s[scores={TradedVillager=1..}] run function player_manager:inventory_event/trade_event/

# 死亡処理
    execute if entity @s[scores={HP=..0,Hunger=..-1}] run function player_manager:death/

# 生き返ったときは満腹度調整処理
    execute if entity @s[scores={HP=1..,Hunger=0..}] run function player_manager:death/apply_hunger

# 経験値取得処理
    execute if entity @s[predicate=player_manager:has_netherstar] run function player_manager:job/pick_exp/

# レベルアップ処理
    execute if entity @s[scores={ExpToLevel=..0,Job=1..}] run function player_manager:job/level_up/

# MP自然回復
    execute if entity @s[scores={Job=1..,Level=1..}] run function player_manager:mp/mp_regen

# 島攻略
    execute if entity @s[scores={UseEnderEye=1..}] run function world_manager:area/conquer/

# 緩衝体力付きで死んでいる場合、エフェクトクリアすることで、体力を正常にする
    effect clear @s[scores={Deaths=1..,HP=1..}]

# ベッドで寝たときの効果
    execute if entity @s[scores={SleepInBed=1..}] run function player_manager:sleep/

# お祈り処理(kill)
    execute if entity @s[scores={kill=1..}] run function player_manager:kill/pray/

# 村人会話
    execute if entity @s[scores={AgentFlag=1..}] run function mob_manager:villager/talk_event/agent/trigger/
    execute if entity @s[scores={PastorFlag=1..}] run function mob_manager:villager/talk_event/pastor/trigger/
    execute if entity @s[scores={AugurFlag=1..}] run function mob_manager:villager/talk_event/augur/trigger/

# 透明化＆エーテル Invisible
    execute if entity @s[predicate=player_manager:effects/is_invisibility] run function player_manager:effect/invisible/

# tick/trigger
    function player_manager:show_text/trigger/

# 装備効果
    function player_manager:custom_item/equipments/

# マジックシールドのチェック
    execute if entity @s[tag=MagicShield] run effect give @s minecraft:resistance 1 100
# ウィンドウォール
    execute if entity @s[scores={WindWall=0..}] run function job:skill/black_mage/wind_wall/check

# プレイヤーの回復効果
    execute if entity @s[predicate=player_manager:heal_count/healcount_small] run function player_manager:health/heal/small
    execute if entity @s[predicate=player_manager:heal_count/healcount_large] run function player_manager:health/heal/large

# HP記録
    execute if entity @s[scores={HPChanging=0..}] run scoreboard players operation @s HP = @s HPChanging
    scoreboard players reset @s[scores={HPChanging=0..}] HPChanging
# 満腹度記録
    execute if entity @s[scores={FoodChanging=0..}] run scoreboard players operation @s Food = @s FoodChanging
    scoreboard players reset @s[scores={FoodChanging=0..}] FoodChanging
# 満腹度制限
    execute if entity @s[scores={FoodMax=0..}] run function player_manager:food/limit

# 死亡トリガー TODO
    scoreboard players reset @s[scores={Deaths=1..}] Deaths
# 被ダメージトリガーリセット TODO
    scoreboard players reset @s[scores={DamageTaken=0..}] DamageTaken
    scoreboard players reset @s[scores={DamageResisted=0..}] DamageResisted