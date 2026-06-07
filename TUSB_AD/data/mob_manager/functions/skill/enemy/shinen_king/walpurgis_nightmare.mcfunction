#> mob_manager:skill/enemy/shinen_king/walpurgis_nightmare
#
# ヴァルプルギス・ナイトメア
#
# @within function mob_manager:skill/enemy/shinen_king/

# king
tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lヴァルプルギス・§5§lナイトメア§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"終焉の門を開く。終焉の門は即時ダメLv7を与え、攻撃が当たるごとに範囲が縮小する。","color":"red"}}}]}]

summon AreaEffectCloud ~ ~1.0 ~ {ReapplicantDelay:100,Radius:5.5f,RadiusOnUse:-0.05f,DurationOnUse:0f,duration:800,WaitTime:0,Age:0,CustomNameVisible:true,ParticleParam1:0152,Particle:fallingdust,Tags:["TypeChacked"],effects:[{Id:7b,duration:1,amplifier:7b,show_particles:true}],CustomName:" §4§l終焉の門"}

particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 50 force @a

playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..128] ~ ~ ~ 1 0 1

playsound minecraft:item.totem.use hostile @a[distance=..128] ~ ~ ~ 1 2 1

particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0.25 250 force

particle minecraft:witch ~ ~1 ~ 1 1 1 0.25 250 force
