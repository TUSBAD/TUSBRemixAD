#> mob_manager:skill/enemy/thanatos/helheim_desklop
#
# ヘルヘイム・デスクロップ
#
# @within function mob_manager:skill/enemy/thanatos/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lヘルヘイム§5§l・デスクロップ§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーに即時ダメージLv7を3秒与える。","color":"red"}}}]}]

effect give @a[distance=..32] minecraft:instant_damage 3 6 true
