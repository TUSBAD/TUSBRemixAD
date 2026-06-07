#> mob_manager:skill/enemy/g.sirius/damage_aec
#
# 輪転百劫
#
# @within function mob_manager:skill/enemy/*

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§3§l輪 §3§l転 §3§l百 §3§l劫 §3§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"自身の周囲に即時ダメLv8をのAECをばら撒く。","color":"red"}}}]}]

summon MinecartSpawner ~ ~1 ~ {Invulnerable:true,MinSpawnDelay:0s,MaxSpawnDelay:0s,SpawnCount:1s,SpawnRange:12s,RequiredPlayerRange:99s,MaxNearbyEntities:999s,Motion:[0d,1.0d,0d],SpawnPotentials:[0:{Entity:{NoGravity:1b,Motion:[0:0.0d,1:0.1d,2:0.0d],MaxNearbyEntities:99s,RequiredPlayerRange:80s,CustomDisplayTile:1b,SpawnCount:16s,DisplayTile:"fire",Invulnerable:1b,MaxSpawnDelay:6s,PortalCooldown:10,Delay:-1s,DisplayOffset:14,CustomName:"LWS01",DeathLootTable:"empty",id:"MinecartSpawner",DisplayData:0,SpawnRange:32s,Tags:[0:"CooldownRequired"],MinSpawnDelay:6s,SpawnPotentials:[0:{Entity:{Passengers:[1:{Team:"FinalBoss",Particle:"endRod",Radius:8f,RadiusOnUse:0f,DurationOnUse:0f,duration:50,RadiusPerTick:0f,WaitTime:0,Age:0,CustomName:"§f§l☆ファンタズマデスオーラ☆§r",id:"AreaEffectCloud",Effects:[0:{show_particles:0b,duration:80,Id:7b,Amplifier:7b},{show_particles:0b,duration:80,Id:14b,Amplifier:-6b}]}],id:"XPOrb",Value:-100,Age:5900},Weight:1}]},Weight:1}],Tags:[CooldownRequired,TypeChecked],PortalCooldown:1,Delay:-1s}
