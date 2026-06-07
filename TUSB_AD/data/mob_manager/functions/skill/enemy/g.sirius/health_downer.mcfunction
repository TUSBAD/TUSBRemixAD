#> mob_manager:skill/enemy/g.sirius/health_downer
#
# 六塵一拭
#
# @within function mob_manager:skill/enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l六 §3§l塵 §3§l一 §3§l拭 §3§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"自身の周囲にヘルスダウナーをばら撒く。","color":"red"}}}]}]

summon Villager ~ ~1 ~ {Motion:[0:0.0d,1:-3.0d,2:0.0d],Passengers:[0:{Particle:"witchMagic",Radius:64.0f,ReapplicationDelay:10,CustomName:"§4§lHEALTH §5§lDOWNER§r",RadiusOnUse:0.0f,duration:20,Effects:[0:{duration:20,Id:7b,Amplifier:5b},1:{duration:100,Id:21b,Amplifier:0b}],id:"AreaEffectCloud",WaitTime:10},1:{Particle:"dragonbreath",Radius:0.3f,ReapplicationDelay:0,CustomName:"HEALTH_DOWNER",RadiusOnUse:0.0f,duration:50,Effects:[],id:"AreaEffectCloud"}],DeathTime:19s,Health:0.0f,Silent:1b,active_effects:[{Id:14b,Amplifier:127b,duration:2147483648}]}
