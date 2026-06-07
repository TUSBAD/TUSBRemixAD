#> debug:menu/page/status/hp
#
# HP操作メニュー
#
# @within function debug:menu/page/triggerstatus/1

tellraw @s {"translate":"\n= HP =\n  %s\n%s\n%s\n%s\n%s\n%s\n  %s","with":[{"text":"Heel_HP","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/heel"}},{"text":" + 100","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/100"}},{"text":" + 300","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/300"}},{"text":" + 500","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/500"}},{"text":" + 800","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/800"}},{"text":" + 1024","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/1024"}},{"text":"Reset_HP","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/reset"}}]}

# トリガー時の共通処理
    function debug:menu/page/trigger
