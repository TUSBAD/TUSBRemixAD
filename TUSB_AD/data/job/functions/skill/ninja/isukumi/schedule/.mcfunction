#> job:skill/ninja/isukumi/schedule/
### 居縮が飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=Isukumi] at @s run function job:skill/ninja/isukumi/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/ninja/isukumi/schedule/ 1t
