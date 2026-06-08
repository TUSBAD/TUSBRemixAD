#> mob_manager:skill/enemy/a.pale/hadesu_nightmare
#
# ハデスナイトメア
#
# @within function mob_manager:skill/enemy/a.pale/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§5§lハデスナイトメア§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mの毒状態のプレイヤーのMPを0にする。","color":"red"}}}]}]

execute as @a[distance=..32] if predicate player_manager:effects/is_poison run scoreboard players set @s MP 0

playsound entity.ravager.celebrate master @a[distance=..32] ~ ~ ~ 1 1.8 1
