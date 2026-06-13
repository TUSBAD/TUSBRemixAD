#> player:game_settings/show_world_info/page_2
#
#> ワールドデータ表示
#
#> 地下世界・ガリバー・テーブル・煉獄

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 201"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 203"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}}]

execute if data storage core: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#a600ff"}]
execute if data storage core: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#2848ff"}]
execute if data storage core: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""

#> 250-259: 地下世界
tellraw @s [{"nbt":"area_name.underworld","storage":"world:","color":"#586bfe","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 250"}}," : ",{"nbt":"conquer.count.underworld","storage":"world:"},"/",{"nbt":"conquer.max.underworld","storage":"world:"}]

#> 260-269: ガリバーランド
tellraw @s [{"nbt":"area_name.gullivers_land","storage":"world:","color":"#ffd700","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 260"}}," : ",{"nbt":"conquer.count.gullivers_land","storage":"world:"},"/",{"nbt":"conquer.max.gullivers_land","storage":"world:"}]

#> 270-279: テーブル
tellraw @s [{"nbt":"area_name.table_mountain","storage":"world:","color":"#31fb2d","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 270"}}," : ",{"nbt":"conquer.count.table_mountain","storage":"world:"},"/",{"nbt":"conquer.max.table_mountain","storage":"world:"}]

#> 280-289: ネザー
tellraw @s [{"nbt":"area_name.nether","storage":"world:","color":"#f42f2f","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 280"}}," : ",{"nbt":"conquer.count.nether","storage":"world:"},"/",{"nbt":"conquer.max.nether","storage":"world:"}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="