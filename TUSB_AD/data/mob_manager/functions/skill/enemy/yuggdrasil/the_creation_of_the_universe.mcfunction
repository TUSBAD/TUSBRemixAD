#> mob_manager:skill/enemy/yuggdrasil/the_creation_of_the_universe
#
# 天地開闢
#
# @within function mob_manager:skill/enemy/yuggdrasil/

# Yuggdrasil
me は §2§l天地開闢§r を唱えた！

# ☆大樹神の結界☆
summon Arrow ~ ~1 ~ {Silent:true,damage:0d,life:1000s,Tags:[FlyingObject,TypeChecked],Passengers:[{id:AreaEffectCloud,Particle:"magicCrit",ParticleParam1:18,Radius:4f,RadiusOnUse:0f,DurationOnUse:0f,Duration:200,RadiusPerTick:0.0f,WaitTime:0,Age:0,CustomName:"§a☆大樹神の結界☆§r",CustomNameVisible:true,Tags:[TypeChecked,YuggdraAEC]}]}

execute as @e[tag=YuggdraAEC,limit=1] at @a[distance=..32] run summon Arrow ~ ~ ~ {Silent:true,damage:0d,life:1200s,Motion:[0.0d,-1.0d,0.0d],Tags:[FlyingObject,TypeChecked,Garbage],Passengers:[{id:AreaEffectCloud,Particle:"take",Radius:32f,ReapplicationDelay:0,RadiusOnUse:0f,RadiusPerTick:-0.25f,DurationOnUse:0f,Duration:100,CustomName:"§a☆大樹神の結界☆§r",CustomNameVisible:false,Tags:[TypeChecked],Effects:[0:{Id:2b,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:4b,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:9b,Amplifier:5b,Duration:800,ShowParticles:0b},{Id:5b,Amplifier:127b,Duration:0,ShowParticles:0b},2:{Id:11b,Amplifier:-16b,Duration:800,ShowParticles:0b},{Id:7b,Amplifier:5b,Duration:800,ShowParticles:0b},{Id:25b,Amplifier:-20b,Duration:200,ShowParticles:0b},{Id:19b,Amplifier:127b,Duration:400,ShowParticles:0b},{Id:12b,Amplifier:127b,Duration:0,ShowParticles:0b},{Id:13b,Amplifier:127b,Duration:0,ShowParticles:0b},{Id:14b,Amplifier:-16b,Duration:200,ShowParticles:0b},{Id:18b,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:8b,Amplifier:-20b,Duration:10,ShowParticles:0b}]}]}
