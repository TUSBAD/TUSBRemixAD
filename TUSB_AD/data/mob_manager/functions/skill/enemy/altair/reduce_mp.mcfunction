#> mob_manager:skill/enemy/altair/reduce_mp
#
# 静粛に
#
# @within function mob_manager:skill/enemy/altair/

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§9§l静 §9§l粛 §9§lに §9§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーのMPを10000減少させ、体力増強を削除する。","color":"red"}}}]}]

scoreboard players remove @a[distance=..64] MP 10000

effect give @a[distance=..64] minecraft:health_boost 1 0
