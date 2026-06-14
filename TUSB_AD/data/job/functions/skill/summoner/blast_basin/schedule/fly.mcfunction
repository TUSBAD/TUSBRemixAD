#> job:skill/summoner/blast_basin/schedule/fly
### きらきらタライが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @e[dy=0,type=#lib:mob,tag=Enemy,limit=1] unless predicate job:is_saturation at @s run function job:skill/summoner/blast_basin/schedule/

### 当たっていなかった＆地面についたとき
execute unless data storage skill: {hit:true} unless predicate lib:is_riding run function job:skill/summoner/blast_basin/schedule/hit

### 当たっていたらタライを消す
execute if data storage skill: {hit:true} run kill @s

data modify storage skill: _ set value true
