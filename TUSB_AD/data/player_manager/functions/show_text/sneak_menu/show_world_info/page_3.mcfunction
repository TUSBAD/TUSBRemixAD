#> player:game_settings/show_world_info/page_3
#
#> ワールドデータ表示
#
#> トカルト・図書館・エンド・ニヴル

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 202"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 204"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}}]

execute if data storage tusb_remake: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage tusb_remake: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage tusb_remake: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#0000ff"}]
execute if data storage tusb_remake: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""

#> 290-299: トカルト
execute store result score _ Calc run data get storage area: purified.tocult_colde
execute store result score # _ run function calc:island/get_total/tocult_colde
tellraw @s [{"translate":"トカルトコルデ","color":"#14fffb","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 290"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 300-309: 図書館
execute store result score _ Calc run data get storage area: purified.library
execute store result score # _ run function calc:island/get_total/library
tellraw @s [{"translate":"大図書館","color":"#fda31c","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 300"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 310-319: エンド
execute store result score _ Calc run data get storage area: purified.end
execute store result score # _ run function calc:island/get_total/end
tellraw @s [{"translate":"エ ン ド","color":"#c11eff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 310"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 320-329: ニヴル
execute store result score _ Calc run data get storage area: purified.niflheimr
execute store result score # _ run function calc:island/get_total/niflheimr
tellraw @s [{"translate":"ニヴルヘイム","color":"#2693ff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 320"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="