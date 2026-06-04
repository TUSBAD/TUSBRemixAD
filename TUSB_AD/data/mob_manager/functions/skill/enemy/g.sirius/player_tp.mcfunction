#> mob_manager:skill/enemy/g.sirius/player_tp
#
# 生き永らえるのは僕だけだ
#
# @within function mob_manager:skill/enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l生き永らえるのは僕だけだ§3§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲128mのプレイヤーを自座標にTPさせ、即時ダメLv8を付与する。","color":"red"}}}]}]

tp @a[distance=..128] @s

effect give @a[distance=..32] minecraft:instant_damage 60 7

playsound block.portal.trigger hostile @a[distance=..64] ~ ~ ~ 0.75 2 1
