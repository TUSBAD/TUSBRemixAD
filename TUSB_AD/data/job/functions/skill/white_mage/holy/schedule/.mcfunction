#> job:skill/white_mage/holy/schedule/
### ホーリーが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=Holy] at @s run function job:skill/white_mage/holy/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/white_mage/holy/schedule/ 1t
