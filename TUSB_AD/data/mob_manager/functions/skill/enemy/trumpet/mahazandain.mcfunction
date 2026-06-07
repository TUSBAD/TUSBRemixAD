#> mob_manager:skill/enemy/trumpet/mahazandain
#
# マハザンダイン
#
# @within function mob_manager:skill/enemy/trumpet/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§cマハザンダイン§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"1000ダメージを与え、浮遊させるタライを降らせる。","color":"red"}}}]}]

execute at @a[distance=..32] run summon FallingSand ~ ~2.5 ~ {Block:"piston_extension",Time:1,DropItem:false,HurtEntities:true,FallHurtMax:1000,FallHurtAmount:1000f,FallDistance:1f,Motion:[0.0d,-0.5d,0.0d],Passengers:[0:{id:"ThrownPotion",Motion:[0.0d,-0.5d,0.0d],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{custom_potion_effects:[{Id:25b,Amplifier:50b,duration:30}]}}}]}
