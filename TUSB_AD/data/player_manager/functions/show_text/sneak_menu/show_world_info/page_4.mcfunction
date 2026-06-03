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

#> 330-339: 虚数空間
execute store result score _ Calc run data get storage area: purified.imaginary_space
execute store result score # _ run function calc:island/get_total/imaginary_space
tellraw @s [{"translate":"虚数空間","color":"#758492","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 330"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 340-349: 異空間
execute store result score _ Calc run data get storage area: purified.unusual_space
execute store result score # _ run function calc:island/get_total/unusual_space
tellraw @s [{"translate":"異 空 間","color":"#e60005","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 340"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 350-359: 異次元
execute store result score _ Calc run data get storage area: purified.another_dimension
execute store result score # _ run function calc:island/get_total/another_dimension
tellraw @s [{"translate":"異 次 元","color":"#02ca9d","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 350"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 360-369: 朽ち果てた戦場
execute store result score _ Calc run data get storage area: purified.ancient_field
execute store result score # _ run function calc:island/get_total/ancient_field
tellraw @s [{"translate":"朽ち果てた戦場","color":"#b9176c","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 360"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s ""

tellraw @s "====================================================="