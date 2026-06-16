#> player_manager:block_interact/sign_event/infinity_boss/prep_room_1
# 準備部屋に移動

# conquer.countを取得
    execute store result score _ TUSB run data get storage core: conquer.count.total

# 攻略島数確認
    execute if score _ TUSB matches 20.. run tag @s add InfinityBossArea

# tag削除
    # if conquer.count < 20
        execute if score _ TUSB matches ..19 run tag @s remove InfinityBossArea
        execute if score _ TUSB matches ..19 run tellraw @s {"translate": "20島の攻略が必要です！","color": "red"}

# インベントリ確認
    execute if data entity @s Inventory[0] run tellraw @s {"text":"アイテム持ち込み不可エリアです！","color":"dark_red","bold":true}
    execute if entity @s[tag=InfinityBossArea] unless data entity @s Inventory[0] run tp @s -2709 74 -379
