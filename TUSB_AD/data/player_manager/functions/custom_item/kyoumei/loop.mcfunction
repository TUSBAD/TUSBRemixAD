#> player_manager:custom_item/kyoumei/loop
#
#
#
# @within function player_manager:custom_item/kyoumei/

# 個人ストレージからの移行
    data modify storage item: ItemTest set from storage item: Inventory[-1]
    data remove storage item: Inventory[-1]

# 共鳴アイテムのみ移行
    execute if data storage item: ItemTest.tag{Kyoumei:1b} run data modify storage item: Kyoumei append from storage item: ItemTest

# 共鳴アイテムlog
    execute if data storage item: ItemTest.tag{Kyoumei:1b} run tellraw @s {"translate": "* %1$s の§b§l魂§rと %2$s が§c共鳴§rした！","with": [{"selector":"@s"},{"storage": "item:","nbt": "ItemTest.tag.display.Name","interpret": true}],"hoverEvent":{"action":"show_text","contents":"所有者の魂と共鳴し、その手に戻った。"}}

# 削除
    data remove storage item: ItemTest

# ループ処理
    execute if data storage item: Inventory[0] run function player_manager:custom_item/kyoumei/loop
