#> job:skill/summoner/summon_balloon/schedule/
### サモンバルーンの発射の音
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=arrow,tag=YouCanFly] at @s run function job:skill/summoner/summon_balloon/schedule/check

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/summoner/summon_balloon/schedule/ 1t
