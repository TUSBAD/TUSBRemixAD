#> player_manager:death/item_drop
#
# アイテムをぶちまける
#
# @within function player_manager:death/


# インベ保存
    function api:data_get/inventory

# インベントリを空に
    clear @s

# セッション開ける
    function lib:tsb/array/session/open

# 下ごしらえ
    data modify storage item: Inventory set from storage api: Inventory
    data remove storage item: Inventory[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
    data remove storage item: Inventory[{tag:{Enchantments:[{id:"minecraft:binding_curse"}]}}]
    data remove storage item: Inventory[{tag:{Kyoumei:1b}}]
    data modify storage lib: Array set from storage item: Inventory

# 一回目
    function lib:tsb/array/packing_chest
    execute in world_manager:control run data modify block 3 1 3 Items set from storage lib: Package
    execute in world_manager:control run loot spawn ~ ~1 ~ mine 3 1 3 debug_stick
# リセット
    data remove storage lib: Package

# 二回目
    function lib:tsb/array/packing_chest
    execute in world_manager:control run data modify block 3 1 3 Items set from storage lib: Package
    execute in world_manager:control run loot spawn ~ ~1 ~ mine 3 1 3 debug_stick

# リセット
    function lib:tsb/array/session/close

# 削除
    data remove storage item: Inventory

# 共鳴処理
    execute if data storage api: Inventory[{tag:{Kyoumei:1b}}] in world_manager:control run function player_manager:custom_item/kyoumei/
