#> mob_manager:skill/enemy/sirius/fatal_death
#
# 諸相浄化
#
# @within function mob_manager:skill/enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l諸 §3§l相 §3§l浄 §3§l化 §3§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーに致死の宣告を付与する。","color":"red"}}}]}]

effect give @a[distance=..64] minecraft:invisibility 1 250 true
