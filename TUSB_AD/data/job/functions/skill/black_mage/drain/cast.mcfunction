#> job:skill/black_mage/drain/cast
# ドレイン発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: drain_result set value false
execute as @e[distance=..10,type=#lib:living,limit=1] run function job:skill/black_mage/drain/apply

### ドレインできなかったらMPを返す
execute if data storage skill: {drain_result:false} run scoreboard players operation @s MP += @s MPConsumption
### ドレインできていたら回復
execute if data storage skill: {drain_result:true} run function job:skill/black_mage/drain/player
