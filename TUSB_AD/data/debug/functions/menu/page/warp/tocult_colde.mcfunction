#> debug:menu/page/warp/tocult_colde
#
# トカルト・コルデのワープメニュー
#
# @within function debug:menu/page/warp/tocult_colde

# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

tellraw @s {"translate":"\n= トカルト・コルデ =\n%1$s","with":[{"text":"・名前","hoverEvent":{"action": "show_text","contents": {"text":"説明"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/7.tocult_colde/start_point"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
