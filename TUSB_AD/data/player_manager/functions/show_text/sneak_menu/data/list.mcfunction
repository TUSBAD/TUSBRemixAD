#> player_manager:show_text/sneak_menu/data/list
#
# 
#
# @within function core:login/triggerd

tellraw @s ""
tellraw @s [{"text":"= 一覧 =","color":"white","bold":true}]
tellraw @s ["",{"translate":"・統計","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 12"}}]
tellraw @s ["",{"translate":"・攻略率","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 13"}}]
tellraw @s ["",{"translate":"・ステータス","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 14"}}]
tellraw @s ""
