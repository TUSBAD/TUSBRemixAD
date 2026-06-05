#> debug:menu/page/tag
#
# 
#
# @within function debug:menu/show

execute unless data storage debug: Debug.Tag.Invulnerable run data modify storage debug: Debug.Tag.Invulnerable set value 1
execute store result storage debug: Debug.Tag.Invulnerable short 1 run data get storage debug: Debug.Tag.Invulnerable -1

execute if data storage debug: Debug.Tag{Invulnerable:1s} run tag @s remove Debug.Invulnerable
execute if data storage debug: Debug.Tag{Invulnerable:1s} run tellraw @a {"text": "[server] §aデバックタグを解除しました"} 

execute if data storage debug: Debug.Tag{Invulnerable:-1s} run tag @s add Debug.Invulnerable
execute if data storage debug: Debug.Tag{Invulnerable:-1s} run tellraw @a {"text": "[server] §7デバッグタグを付与しました"} 

function debug:menu/page/trigger
