#> mob_manager:skill/enemy/akuu/
#
# tag Akuu
#
# @within function mob_manager:skill/invoke

tellraw @a ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§3§lトランジッション・ハイパースペース§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"最も近いプレイヤーに距離無制限のTPをする。","color":"red"}}}]}]

tp @s @p

effect give @s minecraft:resistance 4 3 true

effect give @s minecraft:levitation 3 1 true

playsound block.portal.travel hostile @a[distance=..64] ~ ~ ~ 0.75 2 1

particle minecraft:witch ~ ~ ~ 1 1 1 1 50 force @p
