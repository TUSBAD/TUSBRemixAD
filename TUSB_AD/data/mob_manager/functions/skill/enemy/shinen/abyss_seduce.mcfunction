#> mob_manager:skill/magic/abyss_seduce
#
# アビスセデュース
#
# @within function mob_manager:skill/enemy/*

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"アビスセデュース","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"ジャンプ不可を付与するAECを召喚する。","color":"red"}}}]}]
effect give @a[distance=..32] minecraft:jump_boost 20 248 true
