#> mob_manager:skill/enemy/extreme_boss/health_downer
#
# HEALTHDOWNER
#
# @within function mob_manager:skill/enemy/extreme_boss/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§l§k||§5§l§k||§r §5§l§nHEALTH§4§l§nDOWNER§r §5§l§k||§4§l§k||§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"自身の足元にAECを召喚する。召喚されたAECは体力増強を削除し、即時ダメージLv5を与える。","color":"red"}}}]}]

summon Villager ~ ~1 ~ {Motion:[0:0.0d,1:-3.0d,2:0.0d],Passengers:[0:{Particle:"witchMagic",Radius:25.0f,ReapplicationDelay:10,CustomName:"§4§lHEALTH §5§lDOWNER§r",RadiusOnUse:0.0f,Duration:20,Effects:[0:{Duration:20,Id:7b,Amplifier:5b},1:{Duration:100,Id:21b,Amplifier:0b}],id:"AreaEffectCloud",WaitTime:10},1:{Particle:"dragonbreath",Radius:0.3f,ReapplicationDelay:0,CustomName:"HEALTH_DOWNER",RadiusOnUse:0.0f,Duration:50,Effects:[],id:"AreaEffectCloud"}],DeathTime:19s,Health:0.0f,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483648}]}

effect give @e[tag=LiviningEnemy,distance=..32] minecraft:resistance 5 5 true
