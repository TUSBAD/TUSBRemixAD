#> player_manager:inventory_event/get_saplings
## プレイヤーのインベントリに苗木があれば、苗木の販売を解禁する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 苗木を手に入れていたらフラグをセット
execute if data entity @s Inventory[{id:"minecraft:oak_sapling"}] run data modify storage player: settings.saplings.oak set value true
execute if data entity @s Inventory[{id:"minecraft:birch_sapling"}] run data modify storage player: settings.saplings.birch set value true
execute if data entity @s Inventory[{id:"minecraft:spruce_sapling"}] run data modify storage player: settings.saplings.spruce set value true
execute if data entity @s Inventory[{id:"minecraft:jungle_sapling"}] run data modify storage player: settings.saplings.jungle set value true
execute if data entity @s Inventory[{id:"minecraft:acacia_sapling"}] run data modify storage player: settings.saplings.acacia set value true
execute if data entity @s Inventory[{id:"minecraft:dark_oak_sapling"}] run data modify storage player: settings.saplings.dark_oak set value true

advancement revoke @s only player_manager:inventory_event/get_saplings
