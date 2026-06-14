#> core:set_difficulty/
# 難易度調整するやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### プレイヤー人数を取得
execute store result score $Difficulty TUSB if entity @a
### プレイヤー人数^2が基本の難易度補正
scoreboard players operation $Difficulty TUSB *= $Difficulty TUSB
### レベルも取得する
scoreboard players operation _ TUSB = @a Level
scoreboard players operation _ TUSB /= $2 Const
scoreboard players operation $Difficulty TUSB += _ TUSB
### 達成率も反映する
execute store result score _ TUSB run data get storage world: conquer.count.total 10000
execute store result storage math: in int 0.01 run scoreboard players operation _ TUSB /= $MaxPortalCount TUSB
execute store result score _ TUSB run data get storage math: in
scoreboard players operation $Difficulty TUSB += _ TUSB

data modify storage core: difficulty_modifier set value {speed:0,resistance:0}
execute if score $Difficulty TUSB matches 30.. run data modify storage core: difficulty_modifier set value {speed:1,resistance:1}
execute if score $Difficulty TUSB matches 70.. run data modify storage core: difficulty_modifier set value {speed:2,resistance:2}
execute if score $Difficulty TUSB matches 110.. run data modify storage core: difficulty_modifier set value {speed:3,resistance:2}
execute if score $Difficulty TUSB matches 150.. run data modify storage core: difficulty_modifier set value {speed:4,resistance:3,strength:1}
execute if score $Difficulty TUSB matches 190.. run data modify storage core: difficulty_modifier set value {speed:4,resistance:4,stenngth:5}
execute if score $Difficulty TUSB matches 300.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:10,maxhealth:1}
execute if score $Difficulty TUSB matches 600.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:20,maxhealth:10}
execute if score $Difficulty TUSB matches 1200.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:50,maxhealth:25}
execute if score $Difficulty TUSB matches 1500.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:100,maxhealth:50}
