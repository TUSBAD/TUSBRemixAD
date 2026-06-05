#> mob_manager:skill/enemy/shinen_old/ragnarok_gylfaginning
#
# ラグナロク・ギャラルホルン
#
# @within function mob_manager:skill/enemy/shinen_old/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lラグナロク・ギャラルホルン§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"強化されたポリュートを召喚する。範囲内にいると即時ダメージ4を受ける。","color":"red"}}}]}]

summon AreaEffectCloud ~ ~0.5 ~ {ReapplicantDelay:20,Radius:0.5f,RadiusOnUse:0f,DurationOnUse:0f,Duration:1200,RadiusPerTick:0.005f,WaitTime:0,Age:0,CustomNameVisible:true,Particle:mobspell,Effects:[{Id:17b,Duration:40,Amplifier:9b,ShowParticles:true},{Id:7b,Duration:40,Amplifier:4b,ShowParticles:true}],CustomName:"§4§l☠§r"}
