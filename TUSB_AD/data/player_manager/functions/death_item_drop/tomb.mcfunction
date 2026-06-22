#> player_manager:death_item_drop/tomb
#
# 墓を生み出すんごね
#
# @within function player_manager:death_item_drop/do

# 墓を生成
    data modify block 3 1 3 Items set value []
    # アイテムを直接生成
    data modify block 3 1 3 Items append value {id:"minecraft:stone_sword",Count:1b,tag:{CustomModelData:1000,CustomAttributes:1b,HideFlags:123,Unbreakable:true,Tomb:1b,display:{Name:'{"translate":"<死んだプレイヤーの名前>の墓","color":"#FFFFFF","bold":true,"italic":false}',Lore:['{"translate":"名前が彫り込まれた者でないと","color":"#CCCCCC","italic":false}','{"translate":"掘り起こす事は出来ないようだ。","color":"#CCCCCC","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" 墓掘り"}]','{"text":"---CommonSkill---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"CommonSkill",Initializing:1b,Job:"共通",Name:"墓掘り",Level:1,Interval:0,Trigger:"スニークする",Count:1}}}
    data modify block 3 1 3 Items[0].tag.DeathInventory set from storage item: Items
    data modify block 3 1 3 Items[0].tag.DeathUUID set from entity @s UUID
    clear @s

# 名前を入れる
    # 名前を入れるためにちょっと回りくどいことをする
    data modify storage item: Strings set value '{"translate":"%sの墓","color":"white","bold":true,"italic":false,"with":[{"selector":"@s","bold":false,"color":"yellow"}],"interpret":true}'
    execute in world_manager:control run loot replace block 3 1 3 container.1 loot player_manager:tomb
    execute in world_manager:control run loot give @s mine 3 1 3 debug_stick
    data modify block 3 1 3 Items[0].tag.display.Name set from entity @s Inventory[1].tag.display.Name
    clear @s

# Oh_my_datに入れる
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from block 3 1 3 Items[0]

# リセット
    data remove storage item: Strings