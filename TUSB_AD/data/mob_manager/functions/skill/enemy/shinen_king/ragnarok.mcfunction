#> mob_manager:skill/enemy/shinen_king/ragnarok
#
# ラグナロク
#
# @within function mob_manager:skill/enemy/shinen_king/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§f§l§k||§0§l§k||§r §f§l§nラグナロク§r §0§l§k||§f§l§k||§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーに即時ダメージLv6を12秒与える。","color":"red"}}}]}]

effect give @a[distance=..32] minecraft:instant_damage 240 6
