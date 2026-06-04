#> mob_manager:skill/enemy/shihai/oryunpos_gigantomakia
#
# オリュンポス・ギガンドマキア
#
# @within function mob_manager:skill/enemy/shihai/

# Shihai
tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lオリュンポス・ギガンドマキア§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲32mのプレイヤーを移動不能状態にする。","color":"red"}}}]}]

summon endermite ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:1b,Health:100f,Lifetime:300,Tags:["OryunposGigantomakia"],ActiveEffects:[{Id:14,Amplifier:126b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100}]}
function mob_manager:skill/enemy/shihai/loop
