#> debug:menu/status/show/
#
# ステータスメニューを表示
#
# @within function debug:menu/page/triggermain/status

tellraw @s {"translate":"\n= ステータス =\n%s\n%s\n%s\n%s","with":[{"text":"・HP","hoverEvent":{"action": "show_text","contents": {"text":"体力設定"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/hp/"} },{"text":"・MP","hoverEvent":{"action": "show_text","contents": {"text":"MP設定"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/mp/"} },{"text":"・Job","hoverEvent":{"action": "show_text","contents": {"text":"職業設定"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/job/"} },{"text":"・Level","hoverEvent":{"action": "show_text","contents": {"text":"レベル設定"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/level/"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
