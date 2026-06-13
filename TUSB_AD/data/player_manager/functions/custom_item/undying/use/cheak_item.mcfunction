#> player_manager:custom_item/undying/use/cheak_item

data modify storage item: test set from entity @p[tag=Undying] UUID
execute store success storage item: cheak_owner byte 1 run data modify storage item: test set from entity @s Owner
execute if data storage item: {cheak_owner:false} if data entity @s {Item:{tag:{Undying:true}}} run data modify storage item: cheak set value true
