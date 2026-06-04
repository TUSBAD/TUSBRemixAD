#> mob_manager:skill/enemy/shinen_old/nivhelheim_desklop
#
# ニヴルヘイム・デスクロップ
#
# @within function mob_manager:skill/enemy/shinen_old/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lニヴルヘイム・デスクロップ§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲16mのプレイヤーに即時ダメージLv3を10秒付与する。","color":"red"}}}]}]

effect give @a[distance=..16] minecraft:instant_damage 400 3
