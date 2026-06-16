#> player_manager:custom_item/undying/use/check_inventory
# 再帰でインベントリに同じUUIDを持つアイテムが有るかどうかを確かめます。あったらフラグを折る

data modify storage item: test set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].undying.tag.UUID
execute store success storage item: test byte 1 run data modify storage item: test set from storage item: test_array[0].tag.UUID
execute unless data storage item: test_array[0].tag.UUID run data modify storage item: test set value true

# execute if data storage item: {test:false} run scoreboard players add _ TUSB 1
execute if data storage item: {test:false} run data modify storage item: check set value true

data remove storage item: test_array[0]
execute if data storage item: test_array[0] run function player_manager:custom_item/undying/use/check_inventory
