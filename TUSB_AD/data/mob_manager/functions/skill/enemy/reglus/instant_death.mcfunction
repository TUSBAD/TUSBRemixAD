#> mob_manager:skill/enemy/reglus/instant_death
#
# 塵も残さず消してあげる
#
# @within function mmob_manager:skill/enemy/reglus/

tellraw @a ["",{"selector":"@s","bold":true},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§8§l塵も残さず消してあげる§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーに即死の宣告を付与する。","color":"red"}}}]}]

effect give @a[distance=..64] minecraft:invisibility 1 50 true
