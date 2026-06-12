#> player_manager:show_text/sneak_menu/show
#
# リログ時メニュー表示
#
#

tellraw @s [{"text": "= メニュー ="}]
tellraw @s ["",{"translate":"・情報表示","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 2"}}," ",{"translate":"・スキル変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSkillSet set 1"}}]
