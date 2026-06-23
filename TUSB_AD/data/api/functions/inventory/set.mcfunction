execute unless data storage api: Argument.Inventory run tellraw @a [{"storage":"core:","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Inventory","color":"red"}]
execute unless data storage api: Argument.Inventory run return fail
execute in world_manager:control run data modify block 3 1 3 Items set from storage api: Argument.Inventory
execute in world_manager:control run loot replace entity @s hotbar.0 27 mine 3 1 3 debug_stick
data modify storage api: Items set value []
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:27b}]
data modify storage api: Items[{Slot:27b}].Slot set value 0b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:28b}]
data modify storage api: Items[{Slot:28b}].Slot set value 1b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:29b}]
data modify storage api: Items[{Slot:29b}].Slot set value 2b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:30b}]
data modify storage api: Items[{Slot:30b}].Slot set value 3b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:31b}]
data modify storage api: Items[{Slot:31b}].Slot set value 4b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:32b}]
data modify storage api: Items[{Slot:32b}].Slot set value 5b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:33b}]
data modify storage api: Items[{Slot:33b}].Slot set value 6b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:34b}]
data modify storage api: Items[{Slot:34b}].Slot set value 7b
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:35b}]
data modify storage api: Items[{Slot:35b}].Slot set value 8b
execute if data storage api: Items[0] in world_manager:control run data modify block 3 1 3 Items set from storage api: Items
execute if data storage api: Items[0] in world_manager:control run loot replace entity @s inventory.18 9 mine 3 1 3 debug_stick
data modify storage api: Items set value []
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:100b}]
data modify storage api: Items[{Slot:100b}].Slot set value 0b
execute if data storage api: Items[0] in world_manager:control run data modify block 3 1 3 Items set from storage api: Items
execute if data storage api: Items[0] in world_manager:control run loot replace entity @s armor.feet 1 mine 3 1 3 debug_stick
data modify storage api: Items set value []
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:101b}]
data modify storage api: Items[{Slot:101b}].Slot set value 0b
execute if data storage api: Items[0] in world_manager:control run data modify block 3 1 3 Items set from storage api: Items
execute if data storage api: Items[0] in world_manager:control run loot replace entity @s armor.legs 1 mine 3 1 3 debug_stick
data modify storage api: Items set value []
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:102b}]
data modify storage api: Items[{Slot:102b}].Slot set value 0b
execute if data storage api: Items[0] in world_manager:control run data modify block 3 1 3 Items set from storage api: Items
execute if data storage api: Items[0] in world_manager:control run loot replace entity @s armor.chest 1 mine 3 1 3 debug_stick
data modify storage api: Items set value []
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:103b}]
data modify storage api: Items[{Slot:103b}].Slot set value 0b
execute if data storage api: Items[0] in world_manager:control run data modify block 3 1 3 Items set from storage api: Items
execute if data storage api: Items[0] in world_manager:control run loot replace entity @s armor.head 1 mine 3 1 3 debug_stick
data modify storage api: Items set value []
data modify storage api: Items append from storage api: Argument.Inventory[{Slot:-106b}]
data modify storage api: Items[{Slot:-106b}].Slot set value 0b
execute if data storage api: Items[0] in world_manager:control run data modify block 3 1 3 Items set from storage api: Items
execute if data storage api: Items[0] in world_manager:control run loot replace entity @s weapon.offhand 1 mine 3 1 3 debug_stick
data remove storage api: Argument.Inventory
data remove storage api: Items