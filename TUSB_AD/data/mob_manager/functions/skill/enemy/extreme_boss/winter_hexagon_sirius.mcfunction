#> mob_manager:skill/enemy/extreme_boss/winter_hexagon_sirius
#
# ウインター・ヘキサゴン・シリウス
#
# @within function mob_manager:skill/enemy/extreme_boss/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§l§k||§5§l§k||§r §5§lウインター§4§lヘキサゴン §3§lシリウス §5§l§k||§4§l§k||§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーに即時ダメージLv7を6秒与える。","color":"red"}}}]}]

effect give @a[distance=..32] minecraft:instant_damage 120 7
