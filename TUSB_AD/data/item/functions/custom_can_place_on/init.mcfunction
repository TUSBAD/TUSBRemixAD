#> item:custom_can_place_on/init
#
# CanplaceOn初期設定
#
#
#CanPlaceOnを付けるアイテムを取得
data modify storage item: CanPlaceOn set value []
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:torch"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:soul_torch"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:redstone_torch"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:vine"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:cobweb"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:ender_eye"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:red_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:green_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:lime_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:blue_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:black_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:pink_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:gray_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:purple_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:magenta_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:brown_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:cyan_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:light_gray_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:light_blue_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:yellow_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:orange_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:white_shulker_box"}]
data modify storage item: CanPlaceOn append from entity @s Inventory[{id:"minecraft:filled_map"}]
data remove storage item: CanPlaceOn[{tag:{CustomCanPlaceOn:true}}]
#アイテムごとにループ
execute if data storage item: CanPlaceOn[-1] run function item:custom_can_place_on/loop
#リセット
data remove storage item: CanPlaceOn