#> player_manager:custom_item/undying/use/check_item

data modify storage item: test set from entity @p[tag=Undying] UUID
execute store success storage item: check_owner byte 1 run data modify storage item: test set from entity @s Owner
execute if data storage item: {check_owner:false} if data entity @s {Item:{tag:{Undying:true}}} run data modify storage item: check set value true
