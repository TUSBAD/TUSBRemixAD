#> mob_manager:skill/enemy/sirius/damage_effect
#
# 十惑消却
#
# @within function mob_manager:skill/enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l十 §3§l惑 §3§l消 §3§l却 §3§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーに即時ダメLv8を付与する。","color":"red"}}}]}]

effect give @a[distance=..32] minecraft:instant_damage 240 7
