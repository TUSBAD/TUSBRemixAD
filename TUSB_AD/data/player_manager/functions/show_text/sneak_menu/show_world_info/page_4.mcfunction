#> player:game_settings/show_world_info/page_4
#
#> ワールドデータ表示
#
#> 虚数空間・異空間・異次元・朽ち果てた戦場

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 203"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}}]

execute if data storage tusb_remake: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage tusb_remake: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage tusb_remake: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#0000ff"}]
execute if data storage tusb_remake: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"tusb_remake:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""

#> 330-339: エンド
tellraw @s [{"nbt":"area_name.end","color":"#9900d1","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 330"}}," : ",{"nbt":"conquer.count.end","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.end","storage":"tusb_remake:"}]

#> 340-349: 異空間
tellraw @s [{"nbt":"area_name.unusual_space","color":"#e60005","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 340"}}," : ",{"nbt":"conquer.count.unusual_space","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.unusual_space","storage":"tusb_remake:"}]

#> 350-359: 異次元
tellraw @s [{"nbt":"area_name.another_dimension","color":"#02ca9d","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 350"}}," : ",{"nbt":"conquer.count.another_dimension","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.another_dimension","storage":"tusb_remake:"}]

#> 360-369: 朽ち果てた戦場
tellraw @s [{"nbt":"area_name.ancient_field","color":"#b9176c","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 360"}}," : ",{"nbt":"conquer.count.ancient_field","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.ancient_field","storage":"tusb_remake:"}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="