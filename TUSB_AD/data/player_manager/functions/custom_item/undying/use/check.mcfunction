#> player_manager:custom_item/undying/use/check

# 捨てられていないか確かめる。捨てられてなかったら非実行フラグを立てる
data modify storage item: check set value false
execute as @e[tag=!TypeChecked,type=item] run function player_manager:custom_item/undying/use/check_item
# 同じUUIDのアイテムを持っていたら非実行フラグを立てる
execute store success score _ TUSB unless data storage item: SelectedItem.tag.UUID
data modify storage item: test_array set from entity @s Inventory
execute if data storage item: {check:false} run function player_manager:custom_item/undying/use/check_inventory
# execute if score _ TUSB matches 2.. run data modify storage item: check set value true

# そしてー、カーソルにあるかどうかも確かめる
execute if data storage item: {check:false} run function player_manager:custom_item/undying/use/check_cursor

# 非実行フラグが折れていたらgive
execute if data storage item: {check:false} run function player_manager:custom_item/undying/use/give








# tag @s remove UndyingMainhand

# function #oh_my_dat:please

# なにかが投げられているかを確かめる
# data modify storage _: _.use set value false
# data modify storage _: _.UUID set from entity @s UUID
# execute as @e[tag=!TypeChecked,type=#lib:projectile] run function player_manager:custom_item/undying/use/check_owner
# 投げられていたならgive function
# execute if data storage _: {_:{use:true}} run function player_manager:custom_item/undying/use/give

# スロットが変わっていれば使用判定を消す
# execute store success storage item: _ byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UndyingMainhand.Slot set from entity @s SelectedItemSlot
# execute if data storage item: {_:true} run data modify storage _: _.use set value false