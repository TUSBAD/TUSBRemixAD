#> world_manager:entered/
### サバイバルorアドベンチャー判定

execute if data storage world_manager: {"アドベンチャーエリア":true} run tellraw @s[gamemode=survival] {"text":"ブロックの設置・破壊が制限された。","color":"red"}
execute if data storage world_manager: {"アドベンチャーエリア":true} run gamemode adventure @s[gamemode=survival]
execute if data storage world_manager: {"アドベンチャーエリア":false} run tellraw @s[gamemode=adventure] {"text":"ブロックの設置・破壊制限が解除された。","color":"dark_aqua"}
execute if data storage world_manager: {"アドベンチャーエリア":false} run gamemode survival @s[gamemode=adventure]

#execute if data entity @s {Dimension:"tusb_remake:trade"} run function world_manager:settings/in_tradeisland
#execute unless data entity @s {Dimension:"tusb_remake:trade"} run function world_manager:settings/out_tradeisland