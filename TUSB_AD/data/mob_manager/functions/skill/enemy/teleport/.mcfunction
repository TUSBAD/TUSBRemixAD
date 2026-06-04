#> mob_manager:skill/enemy/teleport/
#
# tag Teleport
#
# @within function mob_manager:skill/invoke

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§f§lテレポート§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"80m以内の自身に最も近いプレイヤーにTPする。","color":"red"}}}]}]

tp @s @p[distance=..80]
