#> mob_manager:skill/magma/explode/
#
# ベギラマ
#
# @within function mob_manager:skill/enemy/magma/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§c§lベギラマ§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"自身の周囲を爆破する。","color":"red"}}}]}]

summon minecraft:spawner_minecart ~ ~1 ~ {Invulnerable:true,MinSpawnDelay:32000s,MaxSpawnDelay:32000s,SpawnCount:5s,SpawnRange:10s,RequiredPlayerRange:99s,MaxNearbyEntities:999s,SpawnPotentials:[{weight:1}],Motion:[0d,0.05d,0d],SpawnData:{entity:{id:"minecraft:fireball",Motion:[0d,1d,0d],ExplosionPower:1,Passengers:[{id:"minecraft:endermite",Health:1f,DeathTime:19s}]}},Tags:[CooldownRequired,TypeChecked],PortalCooldown:1,Delay:0s}
