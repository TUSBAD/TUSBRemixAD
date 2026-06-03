#> player:game_settings/show_world_info/tradeisland/
#
#> 交易島詳細
#
#
tellraw @s "====================================================="
tellraw @s [{"translate":"[最初に戻る]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[一覧に戻る]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 201"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[前のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}}]
tellraw @s ""
tellraw @s [{"translate":"[ 交 易 島 ]","color":"#70f158"}]
tellraw @s [{"translate":"教会","color":"#ffffff"}," : ",{"text":"E","color":"gray","font":"icon","hoverEvent": {"action":"show_text","value":[{"translate":"まだ未浄化のようだ。","color": "white"}]}}]

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]
tellraw @s "====================================================="