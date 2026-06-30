#> main:version_update/update/
#アップデート
data modify storage core: Version set from storage core: UpdatingVersion

function #core:version_update/update

#看板書き換え
execute in world_manager:cloudia run forceload add -1896 -138
execute in world_manager:cloudia run forceload add -1924 -136
execute in world_manager:cloudia run data modify block -1896 113 -138 front_text.messages[1] set value '{"translate":"v1.%1$s.%2$sα","with":[{"storage":"core:","nbt":"Version.Major"},{"storage":"core:","nbt":"Version.Minor"}]}'
execute in world_manager:cloudia positioned -1924.5 111.0 -136.5 run data modify entity @e[distance=0,type=area_effect_cloud,limit=1] CustomName set value '{"translate":"v1.%1$s.%2$sα","with":[{"storage":"core:","nbt":"Version.Major"},{"storage":"core:","nbt":"Version.Minor"}]}'
execute in world_manager:cloudia run forceload remove all
