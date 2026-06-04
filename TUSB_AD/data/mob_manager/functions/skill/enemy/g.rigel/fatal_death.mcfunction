#> mob_manager:skill/enemy/g.rigel/fatal_death
#
# 千呪の戒め
#
# @within function mob_manager:skill/enemy/g.rigel/

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§5§l千 §5§l呪 §5§lの §5§l戒 §5§lめ §5§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤーに致死の宣告を付与する。","color":"red"}}}]}]

effect give @a[distance=..64] minecraft:invisibility 1 250 true
