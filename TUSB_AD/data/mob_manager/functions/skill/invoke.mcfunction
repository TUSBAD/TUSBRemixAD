#> mob_manager:skill/invoke
#
# tag分岐
#
# @within function mob_manager:skill/

# v12
    # WarpOnly
        execute if entity @s[tag=WarpOnly] run function mob_manager:skill/enemy/warp_only/
    # 深淵様
        execute if entity @s[tag=Shinen] run function mob_manager:skill/enemy/shinen/
    # はぐれマグマ
        execute if entity @s[tag=Magma] run function mob_manager:skill/enemy/magma/
    # ホワイトライダー
        execute if entity @s[tag=WhiteRider] run function mob_manager:skill/enemy/white_rider/
    # レッドライダー
        execute if entity @s[tag=RedRider] run function mob_manager:skill/enemy/red_rider/
    # ブラックライダー
        execute if entity @s[tag=BlackRider] run function mob_manager:skill/enemy/black_rider/
    # ペイルライダー
        execute if entity @s[tag=PaleRider] run function mob_manager:skill/enemy/pale_rider/

# TLE
    # 新星様
        execute if entity @s[tag=Shinsei] run function mob_manager:skill/enemy/shinsei/
    # 新星ノ王
        execute if entity @s[tag=ShinseiKing] run function mob_manager:skill/enemy/shinsei_king/

# RR
    # InfinityBoss
        execute if entity @s[tag=InfinityBoss] run function mob_manager:skill/enemy/infinity_boss/
    # GameMaster
        execute if entity @s[tag=GameMaster] unless entity @s[tag=GameMasterend] run function mob_manager:skill/enemy/game_master/

# AD-tp
    # テレポート
        execute if entity @s[tag=Teleport] run function mob_manager:skill/enemy/teleport/
    # 亜空間転移
        execute if entity @s[tag=Akuu] run function mob_manager:skill/enemy/akuu/
    # 異空間転送
        execute if entity @s[tag=Ikuu] run function mob_manager:skill/enemy/ikuu/

# AD-Boss
    # 赤発光
        execute if entity @s[tag=Boss.Minor] run function mob_manager:skill/enemy/boss.minor/
    # 紫発光
        execute if entity @s[tag=Boss.Advanced] run function mob_manager:skill/enemy/boss.advanced/
    # 黒発光
        execute if entity @s[tag=Boss.Extreme] run function mob_manager:skill/enemy/boss.extreme/
    # 桃発光
        execute if entity @s[tag=Boss.Supreme] run function mob_manager:skill/enemy/boss.supreme/

# AD-強化四騎士
    # ホワイトライダー
        execute if entity @s[tag=A.White] run function mob_manager:skill/enemy/a.white/
    # レッドライダー
        execute if entity @s[tag=A.Red] run function mob_manager:skill/enemy/a.red/
    # ブラックライダー
        execute if entity @s[tag=A.Black] run function mob_manager:skill/enemy/a.black/
    # ペイルライダー
        execute if entity @s[tag=A.Pale] run function mob_manager:skill/enemy/a.pale/

# AD-固有
    # タナトス・ケール
        execute if entity @s[tag=Thanatos] run function mob_manager:skill/enemy/thanatos/
    # カースΩ
        execute if entity @s[tag=CauseOmega] run function mob_manager:skill/enemy/cause_omega/
    # 三角ノ王
        execute if entity @s[tag=Triangle] run function mob_manager:skill/enemy/triangle/
    # 鉄を貪るもの 凶
        execute if entity @s[tag=IronEater] run function mob_manager:skill/enemy/iron_eater/
    # ギガジャスティス
        execute if entity @s[tag=GigaJustice] run function mob_manager:skill/enemy/giga_justice/
    # トランぺッター
        execute if entity @s[tag=Trumpet] run function mob_manager:skill/enemy/trumpet/
    # キャリアーアイ
        execute if entity @s[tag=CarryerEye] run function mob_manager:skill/enemy/carryer_eye/
    # 古の深淵様
        execute if entity @s[tag=ShinenOld] run function mob_manager:skill/enemy/shinen_old/
    # FakePlayer
        execute if entity @s[tag=FakePlayer] run function mob_manager:skill/enemy/fake_player/
    # NUKE MAKER
        execute if entity @s[tag=Bomber] run function mob_manager:skill/enemy/bomber/
    # 虚空を揺蕩うもの
        execute if entity @s[tag=Nameless] run function mob_manager:skill/enemy/nameless/
    # 深淵ノ王
        execute if entity @s[tag=ShinenKing] run function mob_manager:skill/enemy/shinen_king/
    # 煉獄龍
        execute if entity @s[tag=PurgatoryBoss] run function mob_manager:skill/enemy/purgatory_boss/

# AD-汎用
    # 四騎士召喚
        execute if entity @s[tag=AllRider] run function mob_manager:skill/enemy/all_rider/
    # 四騎士たらい
        execute if entity @s[tag=TaraiZ] run function mob_manager:skill/enemy/tarai_z/
    # Wizard
        execute if entity @s[tag=Wizard] run function mob_manager:skill/enemy/wizard/
    # yuggdrasil
        execute if entity @s[tag=Yuggdrasil] run function mob_manager:skill/enemy/yuggdrasil/

# AD-守護者
    # 共通
        execute if entity @s[team=Guardian] run function mob_manager:skill/enemy/guardian/
    # カノープス
        execute if entity @s[tag=G.Canopus] run function mob_manager:skill/enemy/g.canopus/
    # リゲル
        execute if entity @s[tag=G.Rigel] run function mob_manager:skill/enemy/g.rigel/
    # アルタイル
        execute if entity @s[tag=G.Altair] run function mob_manager:skill/enemy/g.altair/
    # レグルス
        execute if entity @s[tag=G.Reglus] run function mob_manager:skill/enemy/g.reglus/
    # シリウス
        execute if entity @s[tag=G.Sirius] run function mob_manager:skill/enemy/g.sirius/
