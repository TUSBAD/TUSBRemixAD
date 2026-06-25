#> item:custom_can_place_on/trigger_revoke
#
#
#
# @within function item:custom_can_place_on/trigger

execute as @a[advancements={item:can_place_on=true}] run advancement revoke @s only item:can_place_on