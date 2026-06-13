#> core:settings/switch_sightseeing
# 観光モードを切り替えます
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage core: settings.is_keepinventory byte 1 unless data storage core: settings{is_keepinventory:true}

execute if data storage core: settings{is_keepinventory:true} run tellraw @a [{"selector":"@s"},{"color":"red","text":" によって観光モードに切り替わりました。"}]
execute if data storage core: settings{is_keepinventory:true} as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5 0.67

execute unless data storage core: settings{is_keepinventory:true} run tellraw @a [{"selector":"@s"},{"color":"green","text":" によって通常モードに切り替わりました。"}]
