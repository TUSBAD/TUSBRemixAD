#> world_manager:event/rank/shadow
# イベントモブ召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me 「あの影…。怪しい！」
summon spawner_minecart ~ ~ ~ {Invulnerable:true,MinSpawnDelay:32000s,MaxSpawnDelay:32000s,SpawnCount:3s,SpawnRange:30s,RequiredPlayerRange:99s,MaxNearbyEntities:999s,SpawnPotentials:[{weight:1,data:{entity:{}}}],Motion:[0d,1d,0d],SpawnData:{entity:{id:"villager",Health:0f,DeathTime:19s,Passengers:[{id:"creeper",DeathLootTable:"usb:events/shadow",CustomName:'"スプリッツァガイスト"',Silent:true,ExplosionRadius:4b,Fuse:1s,FallDistance:-100f,active_effects:[{id:"minecraft:invisibility",amplifier:127b,show_particles:false,duration:2147483647}],Passengers:[{id:"experience_orb"}]}]}},Tags:[CooldownRequired,TypeChecked],PortalCooldown:11,Delay:10s}
