#> mob_manager:skill/enemy/extreme_boss/phantasma_final_deathaura
#
# ファンタズマ・ファイナルデスオーラ
#
# @within function mob_manager:skill/enemy/extreme_boss/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§0§l§k||§f§l§k||§0§l§k||§f§l§k||§r §f§l§nファンタズマ§f§l§n・ファイナルデスオーラ§r §f§l§k||§0§l§k||§f§l§k||§0§l§k||§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"ファンタズマデスオーラを多数召喚する。ファンタズマデスオーラは即時ダメージLv7を与える。","color":"red"}}}]}]

summon MinecartSpawner ~ ~1 ~ {Invulnerable:true,MinSpawnDelay:0s,MaxSpawnDelay:0s,SpawnCount:1s,SpawnRange:12s,RequiredPlayerRange:99s,MaxNearbyEntities:999s,Motion:[0d,1.0d,0d],SpawnPotentials:[0:{Entity:{NoGravity:1b,Motion:[0:0.0d,1:0.1d,2:0.0d],MaxNearbyEntities:99s,RequiredPlayerRange:80s,CustomDisplayTile:1b,SpawnCount:16s,DisplayTile:"fire",Invulnerable:1b,MaxSpawnDelay:6s,PortalCooldown:10,Delay:-1s,DisplayOffset:14,CustomName:"LWS01",DeathLootTable:"empty",id:"MinecartSpawner",DisplayData:0,SpawnRange:32s,Tags:[0:"CooldownRequired"],MinSpawnDelay:6s,SpawnPotentials:[0:{Entity:{Passengers:[1:{Team:"FinalBoss",Particle:"endRod",Radius:8f,RadiusOnUse:0f,DurationOnUse:0f,Duration:100,RadiusPerTick:0f,WaitTime:200,Age:0,CustomName:"§f§l☆ファンタズマデスオーラ☆§r",id:"AreaEffectCloud",Effects:[0:{ShowParticles:0b,Duration:80,Id:7b,Amplifier:7b}]}],id:"XPOrb",Value:-100,Age:5900},Weight:1}]},Weight:1}],Tags:[CooldownRequired,TypeChecked],PortalCooldown:1,Delay:-1s}

effect give @e[type=#lib:living,distance=..32] minecraft:resistance 20 5 true
