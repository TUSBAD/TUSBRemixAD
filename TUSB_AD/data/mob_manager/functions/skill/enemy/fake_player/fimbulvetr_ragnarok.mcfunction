#> mob_manager:skill/enemy/fake_player/fimbulvetr_ragnarok
#
# フィンブルヴェトル・ラグナロク
#
# @within function mob_manager:skill/enemy/fake_player/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§f§l§k||§0§l§k||§f§l§k||§0§l§k||§r§f§l§nフィンブルヴェトル・ラグナロク§0§l§k||§f§l§k||§0§l§k||§f§l§k||§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲20mのプレイヤーに致死の宣告を付与する。","color":"red"}}}]}]

execute as @a[distance=..20] run effect give @s minecraft:invisibility 1 250 true
