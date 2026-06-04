#> mob_manager:skill/enemy/sirius/kill_64
#
# 正名神誕
#
# @within function mob_manager:skill/enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l正 §3§l名 §3§l神 §3§l誕 §3§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲64mのプレイヤー1人を即死させる。","color":"red"}}}]}]

execute as @r[distance=..64] at @s run function player_manager:kill/skill
