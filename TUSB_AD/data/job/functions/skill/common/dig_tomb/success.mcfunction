#> job:skill/common/dig_tomb/success
#
# 成功時処理
#
# @within function skill:act/common/dig_tomb/act0

# Oh_my_dat に一時保存
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from storage item: Item.tag.DeathInventory
    tellraw @a {"nbt":"Item.tag.DeathInventory","storage": "item:","color": "aqua"}
    tellraw @a {"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory","storage": "oh_my_dat:","color": "aqua"}
    tag @s add DigTomb
    schedule function job:skill/common/dig_tomb/schedule1 1t