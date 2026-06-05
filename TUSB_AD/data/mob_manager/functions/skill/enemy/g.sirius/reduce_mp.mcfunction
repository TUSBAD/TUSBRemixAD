#> mob_manager:skill/enemy/g.sirius/reduce_mp
#
# 頭が高いぞ
#
# @within function mob_manager:skill/enemy//enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l§l頭が高いぞ§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーのMPを2000減少させる。","color":"red"}}}]}]

effect give @a[distance=..64] minecraft:invisibility 1 120 true
