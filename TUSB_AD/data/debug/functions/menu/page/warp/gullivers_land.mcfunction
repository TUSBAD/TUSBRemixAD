#> debug:menu/page/warp/gullivers_land
#
# ガリバーランドのワープメニュー
#
# @within function debug:menu/page/warp/gullivers_land

# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

tellraw @s {"translate":"\n= ガリバーランド =\n%1$s","with":[{"text":"・名前","hoverEvent":{"action": "show_text","contents": {"text":"説明"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/5.gullivers_land/start_point"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
