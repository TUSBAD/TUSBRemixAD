#> mob_manager:skill/enemy/another/trisendence_soul
#
# トライセンデンスソウル
#
# @within function mob_manager:skill/enemy/another/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§8§lトランセンデンスソウル§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーのMPを3000減少させる。","color":"red"}}}]}]

scoreboard players remove @a[distance=..64] MP 3000
