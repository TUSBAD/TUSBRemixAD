#> core:clock/
#
# 毎ティック最初に実行したいもの
#
# @within function #minecraft:tick









# エリア変更判定
#todo:カスタムディメを増やしたらいじります。
    scoreboard players set @a[scores={USBDimension=0..},nbt={Dimension:"minecraft:the_nether"}] AreaChangeFlag -100
    scoreboard players set @a[predicate=world_manager:area/move/end] AreaChangeFlag 110
    scoreboard players set @a[scores={USBDimension=..-1},nbt={Dimension:"minecraft:overworld"}] AreaChangeFlag 0
    scoreboard players set @a[scores={USBDimension=100..},nbt={Dimension:"minecraft:overworld"}] AreaChangeFlag 0
    scoreboard players set @a[predicate=world_manager:area/move/skyland] AreaChangeFlag 0
    scoreboard players set @a[predicate=world_manager:area/move/underworld] AreaChangeFlag 1
    scoreboard players set @a[predicate=world_manager:area/move/cloudia] AreaChangeFlag 10
    scoreboard players set @a[predicate=world_manager:area/move/table_mountain] AreaChangeFlag 11
    scoreboard players set @a[predicate=world_manager:area/move/gullivers_land] AreaChangeFlag 12
    scoreboard players set @a[predicate=world_manager:area/move/tocult_colde] AreaChangeFlag 13
    scoreboard players set @a[predicate=world_manager:area/move/nether] AreaChangeFlag -100
    scoreboard players set @a[predicate=world_manager:area/move/nether_trial] AreaChangeFlag -90
    scoreboard players set @a[predicate=world_manager:area/move/nether_dungeon] AreaChangeFlag -89
# エリア変更処理
    execute as @a[scores={AreaChangeFlag=-100..}] run function world_manager:area/move/
