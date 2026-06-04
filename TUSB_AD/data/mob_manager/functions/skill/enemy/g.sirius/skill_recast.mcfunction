#> mob_manager:skill/enemy/g.sirius/skill_recast
#
# 時空よ、逆巻け！
#
# @within function mob_manager:skill/enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l§l時空よ、逆巻け！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"スキルを再発動する。","color":"red"}}}]}]

scoreboard players operation @s  %= #20 Const
