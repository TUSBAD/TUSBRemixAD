execute at @s run summon creeper ~ ~1 ~ {NoGravity:1b,powered:1b,ignited:1b,ExplosionRadius:0b,Fuse:30s,Invulnerable:1b,NoAI:1b,Silent:1b,active_effects:[{Id:14b,amplifier:127b,duration:200000,show_particles:0b}]}
execute as @e[type=#lib:mob,distance=0] at @s run data modify storage score_damage: Argument set value {Damage:300.00,DamageType:"Blast"}
function score_damage:api/attack