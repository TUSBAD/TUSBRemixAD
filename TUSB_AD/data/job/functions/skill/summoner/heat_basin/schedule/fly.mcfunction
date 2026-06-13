#> job:skill/summoner/heat_basin/schedule/fly
### あつあつタライが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @e[dy=0,type=#lib:mob,tag=Enemy] unless predicate job:is_saturation at @s run function job:skill/summoner/heat_basin/schedule/hit

### 当たっていたらタライを消す
execute if data storage skill: {hit:true} run kill @s

data modify storage skill: _ set value true
