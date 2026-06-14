#> core:difficulty/select/end
#
#
#
# @within function core:difficulty/select/

# 選択用エンティティの片付け
execute in world_manager:cloudia positioned -1750 115 -135 run kill @e[tag=DifficultSelect,distance=..20]
execute in world_manager:cloudia run forceload remove -1750 -135
