#> mob_manager:skill/enemy/g.reglus/fatal_death
#
# 泣き喚いてもやめたげない！
#
# @within function mob_manager:skill/enemy/g.reglus/

tellraw @a ["",{"selector":"@s","bold":true},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§8§l泣き喚いてもやめたげない！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーに致死の宣告を付与する。","color":"red"}}}]}]

effect give @a[distance=..64] minecraft:invisibility 1 250 true
