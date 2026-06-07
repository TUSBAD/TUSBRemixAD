#> mob_manager:skill/enemy/trumpet/megidraon
#
# メギドラオン
#
# @within function mob_manager:skill/enemy/trumpet/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lメギドラオン§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"触れると即死するAECを持ったエンダーマイトを召喚する。","color":"red"}}}]}]

summon Villager ~ ~ ~ {Motion:[0:0.0d,1:-3.0d,2:0.0d],Passengers:[0:{Attributes:[{Name:generic.maxHealth,Base:10d},{Name:generic.movementSpeed,Base:0.45d},{Name:generic.followRange,Base:100d},{Name:generic.knockbackResistance,Base:1d},{Name:generic.attackDamage,Base:0d}],ArmorItems:[{},{},{id:diamond_chestplate,Count:1,tag:{Unbreakable:1,ench:[{id:7,lvl:5}]}},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],Health:10.0f,Silent:1b,Glowing:1b,Lifetime:2300,id:"Endermite",active_effects:[{Id:14b,Amplifier:127,duration:10000,ShowParticles:0b}],Passengers:[0:{Passengers:[0:{Particle:"witchMagic",Radius:5.0f,ReapplicationDelay:10,CustomName:"§4§lメギドラオン§r",RadiusOnUse:0.0f,duration:20,Effects:[0:{duration:20,Id:7b,Amplifier:20b},1:{duration:100,Id:21b,Amplifier:0b}],id:"AreaEffectCloud",WaitTime:60},1:{Particle:"dragonbreath",Radius:0.3f,ReapplicationDelay:0,CustomName:"HEALTH_DOWNER",RadiusOnUse:0.0f,duration:100,Effects:[],id:"AreaEffectCloud"}],id:"XPOrb",Value:-100,Age:5900}]}],DeathTime:19s,Health:0.0f,Silent:1b,active_effects:[{Id:14b,Amplifier:127b,duration:2147483648}]}
