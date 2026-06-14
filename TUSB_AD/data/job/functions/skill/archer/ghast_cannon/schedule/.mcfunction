#> job:skill/archer/ghast_cannon/schedule/
### ガストキャノンが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=#lib:arrow,tag=GhastCannon] at @s run function job:skill/archer/ghast_cannon/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/archer/ghast_cannon/schedule/ 1t
