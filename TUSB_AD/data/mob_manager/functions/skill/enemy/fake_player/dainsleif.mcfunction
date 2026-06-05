#> mob_manager:skill/enemy/fake_player/dainsleif
#
# ユグドラシル・ダインスレイヴ
#
# @within function mob_manager:skill/enemy/fake_player/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§2§lユグドラシル・§5§lダインスレイヴ§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーに夢想の一太刀を放つ。夢想の一太刀は2000ダメージを与える。","color":"red"}}}]}]

# 2000dmg
data modify storage score_damage: Argument set value {Damage:2000.00}
execute as @a[distance=..32] run function score_damage:api/attack

playsound minecraft:item.totem.use hostile @a[distance=..32] ~ ~ ~ 1 2 0
