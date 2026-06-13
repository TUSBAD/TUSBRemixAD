#> job:skill/summoner/gold_basin/schedule/fly
### 金タライが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
# particle end_rod ~ ~ ~ 1 1 1 0.1 3 force

data modify storage skill: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @e[dy=0,type=#lib:mob,tag=Enemy] unless predicate job:is_saturation at @s run function job:skill/summoner/gold_basin/schedule/hit

### 当たっていたらタライを消す
execute if data storage skill: {hit:true} run kill @s

data modify storage skill: _ set value true
