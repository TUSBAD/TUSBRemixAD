#> debug:menu/page/warp/skyland
#
# 通常世界のワープメニュー
#
# @within function debug:menu/page/warp/skyland

tellraw @s {"translate":"\n= ワープ =\n%1$s","with":[{"text":"・初期島","hoverEvent":{"action": "show_text","contents": {"text":"ブラジル"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/1.skyland/strat_point"} },{"text":"・交易島","hoverEvent":{"action": "show_text","contents": {"text":"灯籠の上"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/1.skyland/trade"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
