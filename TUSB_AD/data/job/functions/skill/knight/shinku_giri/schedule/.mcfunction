#> job:skill/knight/shinku_giri/schedule/
### 真空斬りの弾を飛ばす
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=AerialBlast] at @s run function job:skill/knight/shinku_giri/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/knight/shinku_giri/schedule/ 1t
