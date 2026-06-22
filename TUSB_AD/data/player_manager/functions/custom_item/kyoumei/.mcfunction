#> player_manager:custom_item/kyoumei/
#
#
#
# @within function player_manager:death/item_drop/

# 共鳴アイテムを残す
    data modify storage item: Inventory set from storage api: Inventory
    function player_manager:custom_item/kyoumei/loop

# セッション開ける
    function lib:tsb/array/session/open

# 下ごしらえ
    data modify storage lib: Array set from storage item: Kyoumei

# 一回目
    function lib:tsb/array/packing_chest
    execute in world_manager:control run data modify block 3 1 3 Items set from storage lib: Package
    execute in world_manager:control run loot give @s mine 3 1 3 debug_stick
# リセット
    data remove storage lib: Package

# 二回目
    function lib:tsb/array/packing_chest
    execute in world_manager:control run data modify block 3 1 3 Items set from storage lib: Package
    execute in world_manager:control run loot give @s mine 3 1 3 debug_stick

# リセット
    function lib:tsb/array/session/close

# 削除
    data remove storage item: Inventory
    data remove storage item: Kyoumei
