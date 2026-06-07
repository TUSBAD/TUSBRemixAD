#> debug:menu/page/warp/
#
# ワープメニューp1
#
# @within function debug:menu/page/triggermain/warp

tellraw @s {"translate":"\n= ワープ =\n%1$s\n%2$s\n%3$s","with":[{"text":"・通常世界","hoverEvent":{"action": "show_text","contents": {"text":"通常世界のワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/skyland"} },{"text":"・クラウディア","hoverEvent":{"action": "show_text","contents": {"text":"クラウディアのワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/cloudia"} },{"text":"・地下世界","hoverEvent":{"action": "show_text","contents": {"text":"地下世界のワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/underworld"} },{"text":"・テーブルマウンテン","hoverEvent":{"action": "show_text","contents": {"text":"テーブルマウンテンのワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/table_mountain"} },{"text":"・ガリバーランド","hoverEvent":{"action": "show_text","contents": {"text":"ガリバーランドのワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/gullivers_land"} },{"text":"・ネザー","hoverEvent":{"action": "show_text","contents": {"text":"ネザー(煉獄含む)のワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/nether"} },{"text":"・トカルト","hoverEvent":{"action": "show_text","contents": {"text":"トカルトのワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/tocult_colde"} },{"text":"・エンド","hoverEvent":{"action": "show_text","contents": {"text":"エンドのワープポイントを表示"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/warp/end"} }]}

# トリガー時の共通処理
    function debug:menu/page/trigger
# テンプレ
# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

# tellraw @s {"translate":"========地下世界=========\n%s\n%s\n%s","with":[{"text":"・名前","hoverEvent":{"action": "show_text","contents": {"text":"説明"}},"clickEvent":{"action": "run_command","value": "/function debug:menu/page/triggerwarp/ {x:0.0,y:0.0,z:0.0,dimension:dimension}"} }]}
