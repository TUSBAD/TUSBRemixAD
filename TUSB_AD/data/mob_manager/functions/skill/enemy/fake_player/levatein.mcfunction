#> mob_manager:skill/enemy/fake_player/levatein
#
# ユグドラシル・レーヴァテイン
#
# @within function mob_manager:skill/enemy/fake_player/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§2§lユグドラシル・§4§lレーヴァテイン§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーにサンダーボルトを放つ。サンダーボルトは1500ダメージを与える。","color":"red"}}}]}]

# 1500dmg
data modify storage score_damage: Argument set value {Damage:1500.00}
execute as @a[distance=..32] run function score_damage:api/attack

playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..32] ~ ~ ~ 2 1.8 0.1
