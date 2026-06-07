#> player:game_settings/show_world_info/all
#
#> ワールドデータ表示
#
#

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#808080"},{"translate":" / ","color": "white"},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 201"}},{"translate":" / ","color": "white"},{"translate":"[最初のページ]","color":"#808080"}]

execute if data storage tusb_remake: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage tusb_remake: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage tusb_remake: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage tusb_remake: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#a600ff"}]
execute if data storage tusb_remake: difficult{world:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#2848ff"}]
execute if data storage tusb_remake: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""

#>クリア数抽出
tellraw @s {"text":"= 攻略率 =","color":"white","bold":true}
tellraw @s [{"translate":"全エリア %1$s/%2$s (%3$s.%4$s%%)","color":"white","bold":false,"with":[{"nbt":"conquer.count.total","storage":"tusb_remake:","bold":true,"italic":false},{"score":{"name":"MaxPortalCount","objective":"Settings"}},{"nbt":"conquer.rate.int[]","storage":"tusb_remake:","separator":""},{"nbt":"conquer.rate.cent[]","storage":"tusb_remake:","separator":""}]}]
tellraw @s ""
#> 攻略時間等の統計
# mathの準備
execute store result score 経過時間 Settings run time query gametime
execute store result score _ Settings run data get storage tusb_remake: start_time
execute store result storage math: in int 1 run scoreboard players operation 経過時間 Settings -= _ Settings

## 経過時間を表示用に分割
function #math:clock

tellraw @s {"text":"= ワールド統計 =","color":"white","bold":true}
tellraw @s [{"translate":"総死亡回数 : %1$s回","italic":false,"color":"white","with":[{"score": {"name": "AllDeathCount","objective": "DeathCount"},"color":"#ff3333"}]}]
tellraw @s [{"translate":"経過時間 : %1$s","italic":false,"color":"green","with":[{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]},{"nbt":"_","storage":"tusb_remake:","interpret":true}]

# 時間計算
execute store result storage math: in int 1 run scoreboard players get @s LiveTime
function #math:clock

# 表示
tellraw @s {"text":"= 個人統計 =","color":"white","bold":true}
tellraw @s [{"translate":"%1$sの死亡回数 : %2$s回","italic":false,"color":"white","with":[{"selector": "@s"},{"score": {"name": "@s","objective": "DeathCount"},"color":"#ff3333"}]}]
tellraw @s [{"translate":"%1$sの生存時間 : %2$s","italic":false,"color":"green","with":[{"selector": "@s"},{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]}]

tellraw @s "====================================================="