#> debug:menu/page/warp/underworld
#
# 地下世界のワープメニュー
#
# @within function debug:menu/page/warp/underworld

# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

tellraw @s {"translate":"\n= 地下世界 =\n%1$s","with":[{"text":"・名前","hoverEvent":{"action": "show_text","contents": {"text":"説明"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/3.underworld/start_point"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
