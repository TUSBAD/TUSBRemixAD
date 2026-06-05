#> player:game_settings/show_world_info/tradeisland/
#
#> 交易島詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初に戻る]","color":"#ff8040","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 230"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}}]
tellraw @s [{"storage":"tusb_remake:","nbt":"Prefix.TIPS"},{"text":"0","color":"gray","font":"ender_eye"},{"text": "：未攻略"},{"translate":" / ","color": "white"},{"text":"1","font":"ender_eye"},{"text": "：攻略済"}]
tellraw @s [{"translate":"[ 交 易 島 ]","color":"#70f158"}]
tellraw @s [{"translate":"エリア攻略数"}," : ",{"nbt":"conquer.count.tradeisland","storage":"tusb_remake:"},"/",{"nbt":"conquer.max.tradeisland","storage":"tusb_remake:"}]
tellraw @s ""
tellraw @s [{"translate":"教会","color":"#ffffff"}," : ",{"storage":"tusb_remake:","nbt":"capture.tradeisland{001:0}.001","font":"ender_eye","color":"gray"},{"storage":"tusb_remake:","nbt":"capture.tradeisland{001:1}.001","font":"ender_eye"}]

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="