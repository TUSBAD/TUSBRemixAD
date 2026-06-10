#> job:skill/summoner/summon_balloon/
# 風船を召喚(6070)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:arrow ~ ~0.1 ~ {Silent:true,life:1140s,Tags:[YouCanFly,TypeChecked],Passengers:[{id:"minecraft:chicken",Invulnerable:true,Silent:true,active_effects:[{id:"minecraft:levitation",duration:360,amplifier:7b,show_particles:false},{id:"minecraft:invisibility",duration:2147483647,amplifier:127b,show_particles:false}],Team:NoCollision,Tags:[FloatingRequired,SystemEntity,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:ghast",NoAI:true,Silent:true,Invulnerable:true,Tags:[RidingRequired,TypeChecked]}]}]}]}]},{id:"minecraft:minecart",CustomName:'"熱気球"',CustomNameVisible:true,FallDistance:-10000000f,Tags:[FloatingRequired,TypeChecked],CustomDisplayTile:true,DisplayState:{Name:"minecraft:campfire",Properties:{lit:"true"}},DisplayOffset:80}]}]}

### サモンバルーンの演出を有効化
execute in minecraft:overworld run schedule function job:skill/summoner/summon_balloon/schedule/ 1t
