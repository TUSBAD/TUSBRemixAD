#> job:skill/black_mage/cross_fire/apply/snowball
### 雪玉をクロスファイアーにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify entity @s Tags set value [CrossFire,FlyingObject,Driftable,TypeChecked]

execute if score _ ActivatedSkill matches 5210 run tag @s add CrossFire1
execute if score _ ActivatedSkill matches 5211 run tag @s add CrossFire2
execute if score _ ActivatedSkill matches 5212..5219 run tag @s add CrossFire3

### リメイク：まっすぐ飛ぶようにする
data modify entity @s NoGravity set value true
### リメイク：飛ぶ速度を遅くする
data modify storage skill: Motion set from entity @s Motion
execute store result storage skill: Motion[0] double 0.004 run data get storage skill: Motion[0] 100
execute store result storage skill: Motion[1] double 0.004 run data get storage skill: Motion[1] 100
execute store result storage skill: Motion[2] double 0.004 run data get storage skill: Motion[2] 100
data modify entity @s Motion set from storage skill: Motion

### 持続時間を設定
scoreboard players set @s RemainTimer 80
