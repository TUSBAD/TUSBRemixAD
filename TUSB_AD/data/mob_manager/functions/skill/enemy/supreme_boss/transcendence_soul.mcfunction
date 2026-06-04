#> mob_manager:skill/enemy/supreme_boss/transcendence_soul
#
# トランセンデンスソウル
#
# @within function mob_manager:skill/enemy/supreme_boss/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§8§lトランセンデンスソウル§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーのMPを3000減少させる。","color":"red"}}}]}]

effect give @a[distance=..64] minecraft:invisibility 1 120 true
