#> job:skill/archer/stakes_fire/schedule/
### ステークスファイアが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=#lib:arrow,tag=StatesFire] at @s run function job:skill/archer/stakes_fire/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/archer/stakes_fire/schedule/ 1t
