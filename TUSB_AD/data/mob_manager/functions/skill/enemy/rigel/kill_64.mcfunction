#> mob_manager:skill/enemy/rigel/kill_64
#
# 永劫に帰せ
#
# @within function mob_manager:skill/enemy/rigel/

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§5§l永 §5§l劫 §5§lに §5§l帰 §5§lせ §5§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのランダムなプレイヤー1人を即死させる。","color":"red"}}}]}]

execute as @r[distance=..64] at @s run function player_manager:kill/skill
