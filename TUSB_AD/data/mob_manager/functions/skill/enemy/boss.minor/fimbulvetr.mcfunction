#> mob_manager:skill/enemy/boss.minor/fimbulvetr
#
# フィンブルヴェトル
#
# @within function mob_manager:skill/enemy/boss/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§5§lフィンブルヴェトル§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーに即時ダメージLv5を3秒与える。","color":"red"}}}]}]

effect give @a[distance=..32] minecraft:instant_damage 3 4
