#> mob_manager:skill/enemy/soul/oryunpos_toroia
#
# オリュンポス・トロイア
#
# @within function mob_manager:skill/enemy/soul/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lオリュンポス・トロイア§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーのMPを1/10にする。","color":"red"}}}]}]

scoreboard players set @a[distance=..64] MP -100
