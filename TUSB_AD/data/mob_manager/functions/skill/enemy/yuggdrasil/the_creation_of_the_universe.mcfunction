#> mob_manager:skill/enemy/yuggdrasil/the_creation_of_the_universe
#
# 天地開闢
#
# @within function mob_manager:skill/enemy/yuggdrasil/

# Yuggdrasil
me は §2§l天地開闢§r を唱えた！

# ☆大樹神の結界☆
summon Arrow ~ ~1 ~ {Silent:true,damage:0d,life:1000s,Tags:[FlyingObject,TypeChecked],Passengers:[{id:AreaEffectCloud,Particle:"magicCrit",ParticleParam1:18,Radius:4f,RadiusOnUse:0f,DurationOnUse:0f,duration:200,RadiusPerTick:0.0f,WaitTime:0,Age:0,CustomName:"§a☆大樹神の結界☆§r",CustomNameVisible:true,Tags:[TypeChecked,YuggdraAEC]}]}

execute as @e[tag=YuggdraAEC,limit=1] at @a[distance=..32] run summon Arrow ~ ~ ~ {Silent:true,damage:0d,life:1200s,Motion:[0.0d,-1.0d,0.0d],Tags:[FlyingObject,TypeChecked,Garbage],Passengers:[{id:AreaEffectCloud,Particle:"take",Radius:32f,ReapplicationDelay:0,RadiusOnUse:0f,RadiusPerTick:-0.25f,DurationOnUse:0f,duration:100,CustomName:"§a☆大樹神の結界☆§r",CustomNameVisible:false,Tags:[TypeChecked],effects:[0:{Id:2b,amplifier:10b,duration:200,show_particles:0b},{Id:4b,amplifier:10b,duration:200,show_particles:0b},{id:"minecraft:nausea",amplifier:5b,duration:800,show_particles:0b},{Id:5b,amplifier:127b,duration:0,show_particles:0b},2:{id:"minecraft:resistance",amplifier:-16b,duration:800,show_particles:0b},{id:"minecraft:instant_damage",amplifier:5b,duration:800,show_particles:0b},{Id:25b,amplifier:-20b,duration:200,show_particles:0b},{Id:19b,amplifier:127b,duration:400,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:127b,duration:0,show_particles:0b},{id:"minecraft:water_breathing",amplifier:127b,duration:0,show_particles:0b},{id:"minecraft:invisibility",amplifier:-16b,duration:200,show_particles:0b},{Id:18b,amplifier:10b,duration:200,show_particles:0b},{id:"minecraft:jump_boost",amplifier:-20b,duration:10,show_particles:0b}]}]}
