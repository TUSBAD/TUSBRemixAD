#> player:game_settings/show_world_info/page_2
#
#> ワールドデータ表示
#
#> 地下世界・ガリバー・テーブル・煉獄

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 201"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 203"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}}]

execute if data storage tusb_remake: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage tusb_remake: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage tusb_remake: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#0000ff"}]
execute if data storage tusb_remake: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"tusb_remake:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""

#> 250-259: 地下世界
tellraw @s [{"nbt":"area_name.underworld","storage":"tusb_remake:","color":"#586bfe","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 250"}}," : ",{"nbt":"conquer.count.underworld","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.underworld","storage":"tusb_remake:"}]

#> 260-269: ガリバーランド
tellraw @s [{"nbt":"area_name.gullivers_land","storage":"tusb_remake:","color":"#ffd700","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 260"}}," : ",{"nbt":"conquer.count.gullivers_land","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.gullivers_land","storage":"tusb_remake:"}]

#> 270-279: テーブル
tellraw @s [{"nbt":"area_name.table_mountain","storage":"tusb_remake:","color":"#31fb2d","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 270"}}," : ",{"nbt":"conquer.count.table_mountain","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.table_mountain","storage":"tusb_remake:"}]

#> 280-289: ネザー
tellraw @s [{"nbt":"area_name.nether","storage":"tusb_remake:","color":"#f42f2f","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 280"}}," : ",{"nbt":"conquer.count.nether","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.nether","storage":"tusb_remake:"}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="