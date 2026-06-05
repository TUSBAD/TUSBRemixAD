#> mob_manager:skill/shinen/pollute
# 深淵様のスキル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lポリュート§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"空腹と即時ダメLv2を与えるAECを召喚する。","color":"red"}}}]}]
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Radius:0.5f,RadiusOnUse:0f,DurationOnUse:0,Duration:1200,RadiusPerTick:0.005f,WaitTime:0,Age:0,CustomNameVisible:true,Particle:mobSpell,Effects:[{Id:17,Duration:40,Amplifier:9b,ShowParticles:true}],CustomName:'"§d§l☣"'}
