#> mob_manager:skill/shinen/acid_spread
#
# アシッドスプレッド
#
# @within function mob_manager:skill/enemy/*

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lアシッドスプレッド§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲16mに即時ダメLv1を10秒付与する。","color":"red"}}}]}]
effect give @a[distance=..16] minecraft:instant_damage 200 0
