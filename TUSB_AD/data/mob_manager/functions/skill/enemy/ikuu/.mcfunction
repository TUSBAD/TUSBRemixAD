#> mob_manager:skill/enemy/ikuu/
#
# tag Ikuu
#
# @within function mob_manager:skill/invoke

tellraw @a ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§5§lトランジッション・アナザーディメンション§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"自身の位置に全プレイヤーをTPさせる。","color":"red"}}}]}]

tp @a[gamemode=!spectator] @s

effect clear @a[distance=..32] minecraft:resistance

effect give @a[distance=..32] minecraft:blindness 3 100 false

playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.75 2 1

particle minecraft:witch ~ ~ ~ 1 1 1 1 50 force @a[distance=..32]
