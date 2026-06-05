#> debug:menu/show
#
# デバッグメニューを表示
#
#

tellraw @s {"translate":"\n= デバッグメニュー =\n%1$s\n%2$s\n%3$s","with":[{"text":"・ステータスメニュー","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/"} },{"text":"・ワープメニュー","clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/"} },{"text":"・デバックタグ切り替え","clickEvent":{"action": "run_command","value": "/function debug:menu/page/tag"} }]}
