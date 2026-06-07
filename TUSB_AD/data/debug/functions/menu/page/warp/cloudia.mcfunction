#> debug:menu/page/warp/cloudia
#
# クラウディアのワープメニュー
#
# @within function debug:menu/page/warp/cloudia

tellraw @s {"translate":"\n= クラウディア =\n%1$s","with":[{"text":"・初期地点","hoverEvent":{"action": "show_text","contents": {"text":"てろりーん"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/2.cloudia/spawn_point"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
