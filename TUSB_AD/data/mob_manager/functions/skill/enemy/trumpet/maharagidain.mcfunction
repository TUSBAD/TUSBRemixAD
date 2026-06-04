#> mob_manager:skill/enemy/trumpet/maharagidain
#
# マハラギダイン
#
# @within function mob_manager:skill/enemy/trumpet/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§cマハラギダイン§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"1700ダメージを与えるタライを降らせる。","color":"red"}}}]}]

execute at @a[distance=..32] run summon FallingSand ~ ~2.5 ~ {Block:"minecraft:flowing_lava",Data:4b,Time:1,DropItem:false,HurtEntities:true,FallHurtMax:2700,FallHurtAmount:1700f,FallDistance:100f,Motion:[0.0d,-0.5d,0.0d]}
