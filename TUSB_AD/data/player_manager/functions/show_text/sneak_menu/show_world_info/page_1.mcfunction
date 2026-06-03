#> player:game_settings/show_world_info/page_1
#
#> ワールドデータ表示
#
#> 通常世界上/下・交易島・クラウディア

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 202"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}}]

execute if data storage tusb_remake: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage tusb_remake: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage tusb_remake: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#0000ff"}]
execute if data storage tusb_remake: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""

#> 210-219: 通常世界下層
execute store result score _ Calc run data get storage area: purified.skylands
execute store result score # _ run function calc:island/get_total/skylands
tellraw @s [{"translate":"通常世界 下層","color":"#b7b7b7","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 210"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 220-229: 通常世界上層
execute store result score _ Calc run data get storage area: purified.rev_skylands
execute store result score # _ run function calc:island/get_total/rev_skylands
tellraw @s [{"translate":"通常世界 上層","color":"#ff3948","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 220"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 230-239: 交易島
execute store result score _ Calc run data get storage area: purified.tradeisland
execute store result score # _ run function calc:island/get_total/tradeisland
tellraw @s [{"translate":"交易島","color":"#70f158","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 230"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 240-249: クラウディア
execute store result score _ Calc run data get storage area: purified.cloudia
execute store result score # _ run function calc:island/get_total/cloudia
tellraw @s [{"translate":"クラウディア","color":"#23DDFA","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 240"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="