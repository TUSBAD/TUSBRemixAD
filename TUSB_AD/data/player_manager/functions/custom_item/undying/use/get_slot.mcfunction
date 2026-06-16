#> player_manager:custom_item/undying/use/get_slot

data modify storage item: Inventory set from entity @s Inventory
execute store result score $Slot TUSB if data storage item: Inventory[]
execute if data storage item: Inventory[{Slot:100b}] run scoreboard players remove $Slot TUSB 1
execute if data storage item: Inventory[{Slot:101b}] run scoreboard players remove $Slot TUSB 1
execute if data storage item: Inventory[{Slot:102b}] run scoreboard players remove $Slot TUSB 1
execute if data storage item: Inventory[{Slot:103b}] run scoreboard players remove $Slot TUSB 1
execute if data storage item: Inventory[{Slot:-106b}] run scoreboard players remove $Slot TUSB 1
