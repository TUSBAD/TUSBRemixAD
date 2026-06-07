#> debug:menu/page/status/level
#
# Level操作メニュー
#
# @within function debug:menu/page/triggerstatus/3

tellraw @s {"translate":"\n= Level =\n%s\n%s","with":[{"text":"・Lv1","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/level/1"}},{"text":"・Lv50","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/level/50"}}]}

# トリガー時の共通処理
    function debug:menu/page/trigger
