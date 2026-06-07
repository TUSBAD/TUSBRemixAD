#> mob_manager:skill/enemy/shinen_old/ragnarok_gylfaginning
#
# ラグナロク・ギャラルホルン
#
# @within function mob_manager:skill/enemy/shinen_old/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lラグナロク・ギャラルホルン§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"強化されたポリュートを召喚する。範囲内にいると即時ダメージ4を受ける。","color":"red"}}}]}]

summon AreaEffectCloud ~ ~0.5 ~ {ReapplicantDelay:20,Radius:0.5f,RadiusOnUse:0f,DurationOnUse:0f,duration:1200,RadiusPerTick:0.005f,WaitTime:0,Age:0,CustomNameVisible:true,Particle:mobspell,effects:[{id:"minecraft:hunger",duration:40,amplifier:9b,show_particles:true},{id:"minecraft:instant_damage",duration:40,amplifier:4b,show_particles:true}],CustomName:"§4§l☠§r"}
