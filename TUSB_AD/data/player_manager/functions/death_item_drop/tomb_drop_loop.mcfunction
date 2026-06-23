#> player_manager:death_item_drop/tomb_drop_loop
#
# ループ処理
#
# @within function player_manager:death_item_drop/tomb_drop

summon item ~ ~ ~ {Glowing:1b,Health:32767,Tags:[TombItem],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1000,CustomAttributes:1b,HideFlags:123,Unbreakable:true,Tomb:1b,display:{Name:'{"translate":"<死んだプレイヤーの名前>の墓","color":"#FFFFFF","bold":true,"italic":false}',Lore:['{"translate":"名前が彫り込まれた者でないと","color":"#CCCCCC","italic":false}','{"translate":"掘り起こす事は出来ないようだ。","color":"#CCCCCC","italic":false}']}}}}
data modify entity @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] Item.tag.DeathInventory set from storage item: Item[0].tag.DeathInventory
data modify entity @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] Item.tag.DeathUUID set from storage item: Item[0].tag.DeathUUID
data modify entity @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] Item.tag.display.Name set from storage item: Item[0].tag.display.Name
tag @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] remove TombItem
tellraw @a {"nbt":"Item[0].tag.DeathInventory","storage": "item:","color": "red"}
tellraw @a {"nbt":"Item[0].tag.DeathUUID","storage": "item:","color": "red"}
tellraw @a {"nbt":"Item[0].tag.display.Name","storage": "item:","color": "red"}
data remove storage item: Item[0]
execute if data storage item: Item[0] run function player_manager:death_item_drop/tomb_drop_loop
tellraw @a {"nbt":"Item.tag.DeathInventory","storage": "item:","color": "aqua"}
