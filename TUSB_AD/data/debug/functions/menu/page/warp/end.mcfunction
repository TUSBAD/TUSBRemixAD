#> debug:menu/page/warp/end
#
# エンドのワープメニュー
#
# @within function debug:menu/page/warp/end

# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

tellraw @s {"translate":"\n= エンド =\n%1$s","with":[{"text":"・初期地点","hoverEvent":{"action": "show_text","contents": {"text":"ベッドのところ"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/8.end/strat_point"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
