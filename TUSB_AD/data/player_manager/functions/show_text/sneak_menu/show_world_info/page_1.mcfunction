#> player:game_settings/show_world_info/page_1
#
#> ワールドデータ表示
#
#> 通常世界上/下・交易島・クラウディア

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 202"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}}]

execute if data storage tusb_remake: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage tusb_remake: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage tusb_remake: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#0000ff"}]
execute if data storage tusb_remake: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"tusb_remake:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""

#> 210-219: 通常世界下層
tellraw @s [{"nbt":"area_name.skyland","storage":"tusb_remake:","color":"#b7b7b7","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 210"}}," : ",{"nbt":"conquer.count.skyland","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.skyland","storage":"tusb_remake:"}]

#> 220-229: 通常世界上層
tellraw @s [{"nbt":"area_name.new_skyland","storage":"tusb_remake:","color":"#ff3948","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 220"}}," : ",{"nbt":"conquer.count.new_skyland","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.new_skyland","storage":"tusb_remake:"}]

#> 230-239: 交易島
tellraw @s [{"nbt":"area_name.tradeisland","storage":"tusb_remake:","color":"#70f158","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 230"}}," : ",{"nbt":"conquer.count.tradeisland","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.tradeisland","storage":"tusb_remake:"}]

#> 240-249: クラウディア
tellraw @s [{"nbt":"area_name.cloudia","storage":"tusb_remake:","color":"#23DDFA","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 240"}}," : ",{"nbt":"conquer.count.cloudia","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.tradeisland","storage":"tusb_remake:"}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="