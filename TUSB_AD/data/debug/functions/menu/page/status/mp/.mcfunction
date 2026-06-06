#> debug:menu/page/status/mp
#
# MP操作メニュー
#
# @within function debug:menu/page/triggerstatus/2

tellraw @s {"translate":"\n= MP =\n %s\n %s\n %s\n %s\n %s\n %s\n %s\n %s","with":[{"text":"MP 0","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/0"}},{"text":"MP MAX","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/max"}},{"text":" max 100","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/100"}},{"text":" max 300","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/300"}},{"text":" max 500","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/500"}},{"text":" max 1000","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/1000"}},{"text":" max 10000","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/10000"}},{"text":"MP Reset","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/reset"}}]}

# トリガー時の共通処理
    function debug:menu/page/trigger
