#> mob_manager:skill/enemy/warp_only/
#
# tag WarpOnly
#
# @within function mob_manager:skill/invoke

execute at @p[distance=..32] run tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§c§lワープ§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"80m以内の最も近いプレイヤーにテレポートする。","color":"red"}}}]}]

execute at @p[gamemode=!spectator,distance=..32] run tp @s ~ ~1 ~
