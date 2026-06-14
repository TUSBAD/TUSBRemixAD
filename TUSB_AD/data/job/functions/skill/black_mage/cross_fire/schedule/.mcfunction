#> job:skill/black_mage/cross_fire/schedule/
### クロスファイアーが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=CrossFire] at @s run function job:skill/black_mage/cross_fire/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/black_mage/cross_fire/schedule/ 1t
