#> player_manager:show_text/trigger/show_menu
#
# trigger ShowMenu
#
# @within function player_manager:show_text/trigger/

# メニュートリガー
execute if score @s ShowMenu matches 1.. run function player_manager:show_text/sneak_menu/show

# 情報トリガー
execute if score @s ShowMenu matches 11 run function player_manager:show_text/sneak_menu/data/list

# 統計トリガー
execute if score @s ShowMenu matches 12 run function player_manager:show_text/sneak_menu/data/statistics

# 攻略率トリガー
execute if score @s ShowMenu matches 13 run function player_manager:show_text/sneak_menu/show_world_info/

# ステータストリガー
execute if score @s ShowMenu matches 14 run function player_manager:show_text/sneak_menu/data/status

# 設定画面再表示
execute if score @s ShowMenu matches 2.. run function player_manager:show_text/sneak_menu/show

##トリガーリセット
scoreboard players reset @s ShowMenu
scoreboard players enable @s ShowMenu
