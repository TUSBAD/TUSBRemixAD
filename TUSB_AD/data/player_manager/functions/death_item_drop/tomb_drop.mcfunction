#> player_manager:death_item_drop/tomb_drop
#
# 墓をドロップするわよ
#
# @within function player_manager:death_item_drop/do

# Oh_my_dat 起動
    function #oh_my_dat:please
    data modify storage item: Item set value []
    data modify storage item: Item append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory[]
    tellraw @a {"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory[]","storage": "oh_my_dat:","color": "light_purple"}
    tellraw @a {"nbt":"Item","storage": "item:","color": "dark_purple"}
    function player_manager:death_item_drop/tomb_drop_loop
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory
    execute on passengers run kill @s
    kill @s
