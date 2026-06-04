#> mob_manager:skill/enemy/g.reglus/reduce_mp
#
# 虚構の底へ沈んじゃえ！
#
# @within function mob_manager:skill/enemy/g.reglus/

tellraw @a ["",{"selector":"@s","bold":true},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§8§l虚構の底へ沈んじゃえ！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーのMPを2500減少させる。","color":"red"}}}]}]

scoreboard players remove @a[distance=..64] MP 2500
