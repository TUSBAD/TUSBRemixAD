#> player:game_settings/show_world_info/page_2
#
#> ワールドデータ表示
#
#> 地下世界・ガリバー・テーブル・煉獄

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 201"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 203"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}}]

execute if data storage tusb_remake: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage tusb_remake: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage tusb_remake: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#0000ff"}]
execute if data storage tusb_remake: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""

#> 250-259: 地下世界
execute store result score _ Calc run data get storage area: purified.underworld
execute store result score # _ run function calc:island/get_total/underworld
tellraw @s [{"translate":"地下世界","color":"#586bfe","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 250"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 260-269: ガリバーランド
execute store result score _ Calc run data get storage area: purified.gullivers_land
execute store result score # _ run function calc:island/get_total/gullivers_land
tellraw @s [{"translate":"ガリバーランド","color":"#ffd700","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 260"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 270-279: テーブル
execute store result score _ Calc run data get storage area: purified.table_mountain
execute store result score # _ run function calc:island/get_total/table_mountain
tellraw @s [{"translate":"テーブルマウンテン","color":"#31fb2d","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 270"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 280-289: 煉獄
execute store result score _ Calc run data get storage area: purified.purgatory
execute store result score # _ run function calc:island/get_total/purgatory
tellraw @s [{"translate":"煉 獄","color":"#f42f2f","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 280"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="