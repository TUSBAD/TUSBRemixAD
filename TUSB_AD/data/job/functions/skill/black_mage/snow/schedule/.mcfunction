#> job:skill/black_mage/snow/schedule/
### スノウの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=area_effect_cloud,tag=Snow] at @s run function job:skill/black_mage/snow/schedule/check

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/black_mage/snow/schedule/ 1t
