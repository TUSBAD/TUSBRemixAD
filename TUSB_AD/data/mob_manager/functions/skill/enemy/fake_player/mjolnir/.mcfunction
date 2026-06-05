#> mob_manager:skill/enemy/fake_player/mjolnir/
#
# ユグドラシル・ミョルニル
#
# @within function mob_manager:skill/enemy/fake_player/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§2§lユグドラシル・§e§lミョルニル§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーにインバイトアビスを放つ。インバイトアビスは2000ダメージを与える。","color":"red"}}}]}]

function mob_manager:skill/enemy/fake_player/mjolnir/tick

particle minecraft:dragon_breath ~ ~1 ~ 1 0.7 1 0.1 80 force

playsound minecraft:item.trident.return hostile @a[limit=1] ~ ~ ~ 0.5 1 0

playsound minecraft:item.totem.use hostile @a[limit=1] ~ ~ ~ 0.5 2 0
