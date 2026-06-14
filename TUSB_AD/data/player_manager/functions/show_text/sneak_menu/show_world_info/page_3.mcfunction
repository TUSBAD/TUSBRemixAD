#> player:game_settings/show_world_info/page_3
#
#> ワールドデータ表示
#
#> トカルト・図書館・エンド・ニヴル

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 202"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 204"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}}]

execute if data storage core: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#a600ff"}]
execute if data storage core: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#2848ff"}]
execute if data storage core: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""

#> 290-299: トカルト
tellraw @s [{"nbt":"area_name.tocult_colde","storage":"world:","color":"#14fffb","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 290"}}," : ",{"nbt":"conquer.count.tocult_colde","storage":"world:"},"/",{"nbt":"conquer.max.tocult_colde","storage":"world:"}]

#> 300-309: 図書館
tellraw @s [{"nbt":"area_name.library","storage":"world:","color":"#fda31c","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 300"}}," : ",{"nbt":"conquer.count.library","storage":"world:"},"/",{"nbt":"conquer.max.library","storage":"world:"}]

#> 310-319: ニヴル
tellraw @s [{"nbt":"area_name.niflheimr","storage":"world:","color":"#2693ff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 310"}}," : ",{"nbt":"conquer.count.niflheimr","storage":"world:"},"/",{"nbt":"conquer.max.niflheimr","storage":"world:"}]

#> 320-329: ヘルヘイム
tellraw @s [{"nbt":"area_name.hellheimr","storage":"world:","color":"#87dada","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 320"}}," : ",{"nbt":"conquer.count.hellheimr","storage":"world:"},"/",{"nbt":"conquer.max.hellheimr","storage":"world:"}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="